#tag Class
Protected Class App
Inherits Application
	#tag Event
		Sub Close()
		  If DocOpenerTimer <> Nil Then
		    DocOpenerTimer.Mode = Timer.ModeOff
		    RemoveHandler DocOpenerTimer.Action, AddressOf DocOpenerTimerAction
		    DocOpenerTimer = nil
		  end if
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub Open()
		  PostStartupTimer = New Tmr_PostStartup
		  PostStartupTimer.Period = 500
		  PostStartupTimer.Mode = Timer.ModeSingle
		  
		  // This doesn't do anything other than generate a separate thread for profiling
		  dim t as new Thd_Tester
		  t.Run
		  
		  App.AutoQuit = False
		End Sub
	#tag EndEvent

	#tag Event
		Sub OpenDocument(item As FolderItem)
		  if item <> nil and item.Exists and not item.Directory then
		    DocsToOpen.Append item
		    GetDocOpenerTimer.Mode = Timer.ModeSingle
		    #if not TargetMacOS
		      App.AutoQuit = False
		    #endif
		  end if
		  
		End Sub
	#tag EndEvent


	#tag MenuHandler
		Function FileOpen() As Boolean Handles FileOpen.Action
			DoFileOpen
			return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function HelpAbout() As Boolean Handles HelpAbout.Action
			Wnd_About.Show
			
			Return True
			
		End Function
	#tag EndMenuHandler


	#tag Method, Flags = &h1
		Protected Sub DocOpenerTimerAction(sender As Timer)
		  dim doc as FolderItem
		  If DocsToOpen.Ubound <> -1 Then
		    doc = DocsToOpen.Pop
		  End If
		  
		  If doc <> Nil Then
		    Dim profileDoc As ProfileDocument = ProfileDocument.CreateFromDocument( doc )
		    If doc <> Nil Then
		      Dim w As Wnd_Main = WindowForItem( doc )
		      If w <> Nil Then
		        w.Show( profileDoc )
		      End If
		    End If
		  End If
		  
		  If DocsToOpen.Ubound <> -1 Then
		    sender.Mode = Timer.ModeSingle
		    #If Not TargetMacOS
		      App.AutoQuit = False
		    #endif
		  else
		    sender.Mode = Timer.ModeOff
		    #if not TargetMacOS
		      App.AutoQuit = True
		    #endif
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub DoFileOpen()
		  dim dlg as new OpenDialog
		  dlg.PromptText = "Select a ""Profile.txt"" file:"
		  dlg.Filter = FileTypes1.Text
		  dim f as FolderItem = dlg.ShowModal
		  if f <> nil then
		    OpenDocument( f )
		    
		    #if not TargetMacOS
		  else
		    App.AutoQuit = True
		    #endif
		    
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function GetDocOpenerTimer() As Timer
		  if DocOpenerTimer = nil then
		    DocOpenerTimer = new Timer
		    DocOpenerTimer.Mode = Timer.ModeOff
		    DocOpenerTimer.Period = 100
		    
		    AddHandler DocOpenerTimer.Action, AddressOf DocOpenerTimerAction
		  end if
		  
		  return DocOpenerTimer
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PostStartup()
		  // Tackles tasks after all other startup has finished
		  
		  if WindowCount = 0 then // No documents opened
		    DoFileOpen()
		  end if
		  
		  PostStartupTimer.Mode = Timer.ModeOff
		  PostStartupTimer = nil
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function WindowForItem(item As FolderItem) As Wnd_Main
		  // Finds the Wnd_Main for the given item.
		  // Otherwise, returns a new Wnd_Main
		  
		  dim r as Wnd_Main
		  
		  if item is nil or not item.Exists then
		    return nil
		  end if
		  
		  if not item.Directory then
		    item = item.Parent
		  end if
		  
		  dim lastIndex as Integer = WindowCount - 1
		  for i as Integer = 0 to lastIndex
		    dim w as Window = Window( i )
		    if w IsA Wnd_Main and Wnd_Main( w ).ParentFolder.NativePath = item.NativePath then
		      r = Wnd_Main( w )
		      exit
		    end if
		  next i
		  
		  if r is nil then
		    r = new Wnd_Main
		  end if
		  
		  return r
		  
		End Function
	#tag EndMethod


	#tag Note, Name = Release Notes
		1.1:
		- Added this note.
		- Reading files is now international-savvy.
		- Corrected display of percentages.
		
		1.0 - 1.0.1:
		- Initial release.
	#tag EndNote


	#tag Property, Flags = &h1
		Protected DocOpenerTimer As Timer
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected DocsToOpen() As FolderItem
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected PostStartupTimer As Timer
	#tag EndProperty


	#tag Constant, Name = kEditClear, Type = String, Dynamic = False, Default = \"&Delete", Scope = Public
		#Tag Instance, Platform = Windows, Language = Default, Definition  = \"&Delete"
		#Tag Instance, Platform = Linux, Language = Default, Definition  = \"&Delete"
	#tag EndConstant

	#tag Constant, Name = kFileOpen, Type = String, Dynamic = False, Default = \"&Open...", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kFileQuit, Type = String, Dynamic = False, Default = \"&Quit", Scope = Public
		#Tag Instance, Platform = Windows, Language = Default, Definition  = \"E&xit"
	#tag EndConstant

	#tag Constant, Name = kFileQuitShortcut, Type = String, Dynamic = False, Default = \"", Scope = Public
		#Tag Instance, Platform = Mac OS, Language = Default, Definition  = \"Cmd+Q"
		#Tag Instance, Platform = Linux, Language = Default, Definition  = \"Ctrl+Q"
	#tag EndConstant


	#tag ViewBehavior
	#tag EndViewBehavior
End Class
#tag EndClass
