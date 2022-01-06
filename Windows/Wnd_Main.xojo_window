#tag Window
Begin Window Wnd_Main
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   CloseButton     =   True
   Composite       =   False
   Frame           =   0
   FullScreen      =   False
   FullScreenButton=   False
   HasBackColor    =   False
   Height          =   400
   ImplicitInstance=   True
   LiveResize      =   "True"
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   True
   MaxWidth        =   32000
   MenuBar         =   1856602461
   MenuBarVisible  =   True
   MinHeight       =   200
   MinimizeButton  =   True
   MinWidth        =   820
   Placement       =   0
   Resizeable      =   True
   Title           =   "Profile Reader"
   Visible         =   True
   Width           =   918
   Begin PRListBox lbProfiles
      AutoDeactivate  =   True
      AutoHideScrollbars=   True
      Bold            =   False
      Border          =   True
      ColumnCount     =   1
      ColumnsResizable=   False
      ColumnWidths    =   ""
      DataField       =   ""
      DataSource      =   ""
      DefaultRowHeight=   -1
      Enabled         =   True
      EnableDrag      =   False
      EnableDragReorder=   False
      GridLinesHorizontal=   0
      GridLinesVertical=   0
      HasHeading      =   False
      HeadingIndex    =   -1
      Height          =   316
      HelpTag         =   ""
      Hierarchical    =   False
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      RequiresSelection=   False
      Scope           =   0
      ScrollbarHorizontal=   False
      ScrollBarVertical=   True
      SelectionType   =   0
      ShowDropIndicator=   False
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "SmallSystem"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   64
      Transparent     =   False
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   160
      _ScrollOffset   =   0
      _ScrollWidth    =   -1
   End
   Begin PRListBox lbMethods
      AutoDeactivate  =   True
      AutoHideScrollbars=   True
      Bold            =   False
      Border          =   True
      ColumnCount     =   5
      ColumnsResizable=   True
      ColumnWidths    =   ",70,100,100,130"
      DataField       =   ""
      DataSource      =   ""
      DefaultRowHeight=   -1
      Enabled         =   True
      EnableDrag      =   False
      EnableDragReorder=   False
      GridLinesHorizontal=   0
      GridLinesVertical=   0
      HasHeading      =   True
      HeadingIndex    =   -1
      Height          =   316
      HelpTag         =   ""
      Hierarchical    =   True
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   " 	Called	Total (ms)	Average (ms)	Percent of Total"
      Italic          =   False
      Left            =   192
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      RequiresSelection=   False
      Scope           =   0
      ScrollbarHorizontal=   False
      ScrollBarVertical=   True
      SelectionType   =   0
      ShowDropIndicator=   False
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "SmallSystem"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   64
      Transparent     =   False
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   706
      _ScrollOffset   =   0
      _ScrollWidth    =   -1
   End
   Begin Timer tmrCheckForParentChange
      Enabled         =   True
      Index           =   -2147483648
      InitialParent   =   ""
      LockedInPosition=   False
      Mode            =   2
      Period          =   1000
      Scope           =   2
      TabPanelIndex   =   0
   End
   Begin Label lblParentPath
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "/path/to/folder"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   14
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   878
   End
   Begin Timer tmrFixMethodSelection
      Enabled         =   True
      Index           =   -2147483648
      InitialParent   =   ""
      LockedInPosition=   False
      Mode            =   0
      Period          =   20
      Scope           =   0
      TabPanelIndex   =   0
   End
   Begin Timer tmrUpdateMouseOverHighlighting
      Enabled         =   True
      Index           =   -2147483648
      InitialParent   =   ""
      LockedInPosition=   False
      Mode            =   0
      Period          =   100
      Scope           =   0
      TabPanelIndex   =   0
   End
   Begin splitter splitter1
      AcceptFocus     =   False
      AcceptTabs      =   False
      AutoDeactivate  =   True
      Backdrop        =   0
      DoubleBuffer    =   True
      DrawHandles     =   True
      Enabled         =   True
      HasBackColor    =   False
      Height          =   316
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   180
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      SplitterColor   =   &c00000000
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   64
      Transparent     =   True
      UseFocusRing    =   True
      Visible         =   True
      Width           =   12
   End
End
#tag EndWindow

#tag WindowCode
	#tag Method, Flags = &h0
		Sub Constructor(profileDoc as ProfileDocument)
		  // Calling the overridden superclass constructor.
		  Super.Constructor
		  
		  Show(profileDoc, false)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function ExpandedColor() As Color
		  If Color.IsDarkMode Then
		    Return kDarkModeExpandedColor
		  Else
		    Return kLightModeExpandedColor
		  End If
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub HandleDeleteProfile(f as folderitem)
		  dim dlg as new MessageDialog
		  dlg.Message = "Really delete """ + f.Name + """?"
		  dlg.ActionButton.Caption = "Delete"
		  dlg.CancelButton.Visible = True
		  dim btn as MessageDialogButton = dlg.ShowModalWithin( self )
		  if btn.Caption = "Delete" then
		    f.Delete
		    ScanParentFolder()
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub HandleRevealProfile(f as folderitem)
		  #if TargetMacOS
		    FinderReveal( f.NativePath )
		  #else
		    f.Parent.Launch
		  #endif
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function MouseOverColor() As color
		  If Color.IsDarkMode Then
		    Return kDarkModeMouseOverColor
		  Else
		    Return kLightModeMouseOverColor
		  End If
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub PopulateMethodsListBox()
		  lbMethods.DeleteAllRows()
		  If lbProfiles.ListIndex = -1 Then 
		    Return
		  End If
		  
		  dim profile As ProfileDocument = lbProfiles.RowTag( lbProfiles.ListIndex )
		  dim lastCol as Integer = lbMethods.ColumnCount - 1
		  
		  // Just add the threads here, then expand them as needed
		  dim thds() As ProfileThread = profile.Threads
		  
		  // Need to be sorted?
		  dim sortColumnIndex as Integer = lbMethods.SortedColumn
		  if sortColumnIndex = kColumnTimeSpent then
		    dim sortDirection as Integer = lbMethods.ColumnSortDirection( sortColumnIndex )
		    dim sorter() as Double
		    redim sorter( thds.Ubound )
		    for i as Integer = 0 to sorter.Ubound
		      sorter( i ) = thds( i ).TimeSpent
		    next i
		    
		    sorter.SortWith thds
		    
		    if sortDirection = -1 then
		      dim firstElement as Integer = 0
		      dim lastElement as Integer = thds.Ubound
		      while firstElement < lastElement
		        dim temp as ProfileThread = thds( firstElement )
		        thds( firstElement ) = thds( lastElement )
		        thds( lastElement ) = temp
		        
		        firstElement = firstElement + 1
		        lastElement = lastElement - 1
		      wend
		    end if
		  end if
		  
		  for i as Integer = 0 to thds.Ubound
		    dim thisThread as ProfileThread = thds( i )
		    lbMethods.AddFolder( thisThread.Name )
		    lbMethods.Cell( i, kColumnTimeSpent ) = Format( thisThread.TimeSpentTotal, "-#,0.00" )
		    
		    lbMethods.RowTag( i ) = thisThread
		    for col as Integer = 0 to lastCol
		      lbMethods.CellBold( i, col ) = True
		    next
		  next i
		  
		  // Expand as needed
		  for i as Integer = thds.Ubound DownTo 0
		    if thds( i ).Expanded then
		      lbMethods.Expanded( i ) = True
		    end if
		  next i
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub PopulateProfilesListBox()
		  If m_ProfileDocsDict Is Nil Then 
		    Return
		  End If
		  
		  dim selectedProfile as ProfileDocument
		  if lbProfiles.ListIndex <> -1 and lbProfiles.ListIndex < lbProfiles.ListCount then
		    selectedProfile = lbProfiles.RowTag( lbProfiles.ListIndex )
		  end if
		  
		  #if not TargetMacOS
		    lbProfiles.Visible = False
		  #endif
		  lbProfiles.DeleteAllRows
		  
		  dim profileName as String
		  dim dictValues() as Variant = m_ProfileDocsDict.Values
		  for each profile as ProfileDocument in dictValues
		    profileName = profile.Document.Name + "(" + profile.StartDate.SQLDateTime + ")"
		    lbProfiles.AddRow( profileName )
		    lbProfiles.RowTag( lbProfiles.LastIndex ) = profile
		  next profile
		  
		  #if not TargetMacOS
		    lbProfiles.Visible = True
		  #endif
		  
		  lbProfiles.SortedColumn = 0
		  lbProfiles.Sort
		  
		  if selectedProfile <> nil then
		    ShowProfile( selectedProfile.ID )
		  end if
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub ScanParentFolder()
		  // Scans the parent folder and pulls out all the profiles
		  
		  if m_ProfileDocsDict is nil then
		    m_ProfileDocsDict = New Dictionary
		  end if
		  
		  dim pFolder as FolderItem = self.ParentFolder
		  If pFolder Is Nil Then 
		    Return // Really shouldn't happen
		  End If
		  
		  m_ParentLastModDate = pFolder.ModificationDate
		  
		  dim updateListBox as Boolean
		  dim fileList() as FolderItem
		  dim cnt as Integer = pFolder.Count
		  
		  
		  For i As Integer = 1 To cnt
		    fileList.Append( pFolder.Item( i ) )
		  Next
		  
		  Dim newDict As New Dictionary
		  For Each f As FolderItem In fileList
		    Dim fName As String = f.Name
		    If fName.Left( 7 ) = "Profile" And fName.Right( 4 ) = ".txt" Then
		      Dim profile As ProfileDocument = ProfileDocument.CreateFromDocument( f )
		      
		      // Rename the FolderItem if needed.
		      If f.Name = "Profile.txt" Then // Default name, so rename it
		        Dim sqlTime As String = profile.StartDate.SQLDateTime
		        Dim newNamePrefix As String = "Profile " + sqlTime.ReplaceAll( ":", "-" )
		        Dim newNameSuffix As String = ".txt"
		        Dim newName As String = newNamePrefix + newNameSuffix
		        Dim moveTo As FolderItem = pFolder.Child( newName )
		        Dim index As Integer
		        While moveTo.Exists
		          index = index + 1
		          newName = newNamePrefix + " (" + Str( index ) + ")" + newNameSuffix
		          moveTo = pFolder.Child( newName )
		        Wend
		        f.Name = newName
		        profile.Document = f
		      End If
		      
		      If profile <> Nil Then
		        If Not m_ProfileDocsDict.HasKey( profile.ID ) Then
		          updateListBox = True
		        End If
		        newDict.Value( profile.ID ) = profile
		      End If
		    End If
		  Next
		  
		  // Is there anything there?
		  if newDict.Count = 0 then
		    
		    ShowMessageDialog( "All profiles have been deleted.", "Close" )
		    
		  else
		    
		    // Was something deleted?
		    if m_ProfileDocsDict.Count <> newDict.Count then
		      updateListBox = True
		    end if
		    
		    m_ProfileDocsDict = newDict
		    if updateListBox then
		      PopulateProfilesListBox()
		    end if
		    
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Show(profileDoc as ProfileDocument, scanParent as boolean = true)
		  // By the time the doc gets here, it will have been validated
		  
		  self.Show()
		  
		  if m_ProfileDocsDict is nil then
		    m_ProfileDocsDict = new Dictionary
		  End If
		  
		  If Self.ParentFolder Is Nil Or Self.ParentFolder.NativePath <> profileDoc.Document.NativePath Then
		    Self.ParentFolder = profileDoc.Document.Parent
		  End If
		  Dim pFolder As FolderItem = Self.ParentFolder
		  
		  // Rename the FolderItem if needed.
		  Dim f As FolderItem = profileDoc.Document
		  If f.Name = "Profile.txt" Then // Default name, so rename it
		    Dim sqlTime As String = profileDoc.StartDate.SQLDateTime
		    Dim newNamePrefix As String = "Profile " + sqlTime.ReplaceAll( ":", "-" )
		    Dim newNameSuffix As String = ".txt"
		    Dim newName As String = newNamePrefix + newNameSuffix
		    Dim moveTo As FolderItem = pFolder.Child( newName )
		    Dim index As Integer
		    While moveTo.Exists
		      index = index + 1
		      newName = newNamePrefix + " (" + Str( index ) + ")" + newNameSuffix
		      moveTo = pFolder.Child( newName )
		    Wend
		    f.Name = newName
		    profileDoc.Document = f
		  End If
		  
		  if scanParent = true then
		    ScanParentFolder()
		  Else
		    m_ProfileDocsDict = New Dictionary
		    m_ProfileDocsDict.Value( profileDoc.ID ) = profileDoc
		    PopulateProfilesListBox
		  End If
		  
		  ShowProfile( profileDoc )
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub ShowMessageDialog(msg As String, caption As String)
		  dim dlg as new MessageDialog
		  dlg.Message = msg
		  dlg.ActionButton.Caption = caption
		  call dlg.ShowModalWithin( self )
		  self.Close
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub ShowProfile(profileID As String)
		  If profileID = "" Then
		    lbProfiles.ListIndex = -1
		    return
		  end if
		  
		  dim lastRow as Integer = lbProfiles.ListCount - 1
		  for row as Integer = 0 to lastRow
		    dim profile as ProfileDocument = lbProfiles.RowTag( row )
		    if profile.ID = profileID then
		      lbProfiles.ListIndex = row
		      exit
		    end if
		  next row
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h1
		Protected m_LastSelectedMethodProfile As ProfileBase
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected m_MouseOverPrevious As Integer = -1
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected m_MouseOverRow As Integer = -1
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected m_ParentFolder As FolderItemAlias
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected m_ParentLastModDate As Date
	#tag EndProperty

	#tag Property, Flags = &h1
		#tag Note
			Key is the ProfileDocument.ID
		#tag EndNote
		Protected m_ProfileDocsDict As Dictionary
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected m_Valid As Boolean
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  if m_ParentFolder = nil then
			    return nil
			  else
			    return m_ParentFolder
			  end if
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  m_ParentFolder = value
			  if value <> nil then
			    lblParentPath.Text = value.NativePath
			  else
			    lblParentPath.Text = ""
			  end if
			  
			End Set
		#tag EndSetter
		ParentFolder As FolderItem
	#tag EndComputedProperty


	#tag Constant, Name = kColumnAverageTime, Type = Double, Dynamic = False, Default = \"3", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = kColumnCalled, Type = Double, Dynamic = False, Default = \"1", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = kColumnPercent, Type = Double, Dynamic = False, Default = \"4", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = kColumnTimeSpent, Type = Double, Dynamic = False, Default = \"2", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = kDarkModeExpandedColor, Type = Color, Dynamic = False, Default = \"&c817B91", Scope = Protected
		#Tag Instance, Platform = Mac OS, Language = Default, Definition  = \"&c817B91"
		#Tag Instance, Platform = Windows, Language = Default, Definition  = \"&c817B91"
	#tag EndConstant

	#tag Constant, Name = kDarkModeMouseOverColor, Type = Color, Dynamic = False, Default = \"&c835658", Scope = Protected
		#Tag Instance, Platform = Mac OS, Language = Default, Definition  = \"&c835658"
		#Tag Instance, Platform = Windows, Language = Default, Definition  = \"&c835658"
	#tag EndConstant

	#tag Constant, Name = kLightModeExpandedColor, Type = Color, Dynamic = False, Default = \"&cD2CBFD", Scope = Protected
		#Tag Instance, Platform = Mac OS, Language = Default, Definition  = \"&cD2CBFD"
		#Tag Instance, Platform = Windows, Language = Default, Definition  = \"&cD2CBFD"
	#tag EndConstant

	#tag Constant, Name = kLightModeMouseOverColor, Type = Color, Dynamic = False, Default = \"&cFFA7AA", Scope = Protected
		#Tag Instance, Platform = Mac OS, Language = Default, Definition  = \"&cFFA7AA"
		#Tag Instance, Platform = Windows, Language = Default, Definition  = \"&cFFA7AA"
	#tag EndConstant


#tag EndWindowCode

#tag Events lbProfiles
	#tag Event
		Sub Change()
		  If Me.SelectedRowIndex <> -1 Then
		    Self.Title = Me.SelectedRowValue
		  Else
		    Self.Title = "Profile Reader"
		  End If
		  PopulateMethodsListBox()
		  
		End Sub
	#tag EndEvent
	#tag Event
		Function ConstructContextualMenu(base as MenuItem, x as Integer, y as Integer) As Boolean
		  While base.Count <> 0
		    base.Remove 0
		  wend
		  
		  dim m as MenuItem
		  
		  m = New MenuItem( "Open in new window" )
		  m.Name = "OpenNew"
		  m.Enabled = Me.ListIndex <> -1
		  base.Append m
		  
		  m = New MenuItem( "Reveal" )
		  m.Name = "Reveal"
		  m.Enabled = Me.ListIndex <> -1
		  base.Append m
		  
		  m = New MenuItem( "Delete..." )
		  m.Name = "Delete"
		  m.Enabled = me.ListIndex <> -1
		  base.Append m
		  
		  return True
		  
		  #pragma unused x
		  #pragma unused y
		  
		End Function
	#tag EndEvent
	#tag Event
		Function ContextualMenuAction(hitItem as MenuItem) As Boolean
		  dim row as Integer = me.ListIndex
		  dim profile as ProfileDocument
		  if row <> -1 and me.RowTag( row ) IsA ProfileDocument then
		    profile = me.RowTag( row )
		  end if
		  
		  dim f as FolderItem
		  if profile <> nil then
		    f = profile.Document
		  end if
		  
		  if f is nil then // Nothing to do
		    return False
		  end if
		  
		  Select Case hitItem.Name
		    
		  Case "OpenNew"
		    Dim w As New Wnd_Main( profile )
		    
		  Case "Delete"
		    HandleDeleteProfile(f)
		    
		  Case "Reveal"
		    HandleRevealProfile(f)
		    
		  Else
		    Return False
		  End Select
		  
		  Return True
		  
		  
		  
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events lbMethods
	#tag Event
		Sub Open()
		  me.ColumnAlignment( kColumnCalled ) = ListBox.AlignRight
		  
		  me.ColumnAlignment( kColumnTimeSpent ) = ListBox.AlignRight
		  
		  me.ColumnAlignment( kColumnAverageTime ) = ListBox.AlignRight
		  
		  me.ColumnAlignment( kColumnPercent ) = ListBox.AlignRight
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub ExpandRow(row As Integer)
		  dim profile as ProfileBase = me.RowTag( row )
		  dim cnt as Integer = profile.ChildCount
		  dim methods() as ProfileMethod = if( profile IsA ProfileThread, ProfileThread( profile ).Methods, ProfileMethod( profile ).Methods )
		  
		  // Need to be sorted?
		  dim sortColumnIndex as Integer = lbMethods.SortedColumn
		  if sortColumnIndex <> -1 then
		    dim sortDirection as Integer = lbMethods.ColumnSortDirection( sortColumnIndex )
		    dim sorter() as Double
		    redim sorter( methods.Ubound )
		    for i as Integer = 0 to sorter.Ubound
		      select case sortColumnIndex
		      case kColumnCalled
		        sorter( i ) = methods( i ).TimesCalled
		      case kColumnTimeSpent
		        sorter( i ) = methods( i ).TimeSpentTotal
		      case kColumnAverageTime
		        sorter( i ) = methods( i ).TimeSpentTotal / methods( i ).TimesCalled
		      case kColumnPercent
		        sorter( i ) = methods( i ).PercentOfTotal
		      end select
		    next i
		    
		    sorter.SortWith methods
		    
		    if sortDirection = -1 then
		      dim firstElement as Integer = 0
		      dim lastElement as Integer = methods.Ubound
		      while firstElement < lastElement
		        dim temp as ProfileMethod = methods( firstElement )
		        methods( firstElement ) = methods( lastElement )
		        methods( lastElement ) = temp
		        
		        firstElement = firstElement + 1
		        lastElement = lastElement - 1
		      wend
		    end if
		  end if
		  
		  dim expandAll as Boolean
		  #if TargetMacOS or TargetWin32
		    expandAll = Keyboard.OptionKey
		  #else
		    expandAll = Keyboard.ControlKey
		  #endif
		  
		  for i as Integer = 1 to cnt
		    dim thisMethod as ProfileMethod = methods( i - 1 )
		    dim newRow as Integer = row + i
		    if thisMethod.ChildCount <> 0 then
		      me.AddFolder( thisMethod.Name )
		    else
		      me.AddRow( thisMethod.Name )
		    end if
		    me.Cell( newRow, kColumnCalled ) = Format( thisMethod.TimesCalled, "-#,0" )
		    me.Cell( newRow, kColumnTimeSpent ) = Format( thisMethod.TimeSpentTotal, "-#,0.00" )
		    me.Cell( newRow, kColumnAverageTime ) = Format( thisMethod.TimeSpentTotal / thisMethod.TimesCalled, "-#,0.00" )
		    me.Cell( newRow, kColumnPercent ) = Format( thisMethod.PercentOfTotal, "-##0.00" ) + "%"
		    
		    me.RowTag( newRow ) = thisMethod
		  next
		  
		  dim lastRow as Integer = row + cnt
		  dim firstRow as Integer = row + 1
		  for i as Integer = lastRow DownTo firstRow
		    dim thisMethod as ProfileMethod = me.RowTag( i )
		    if expandAll and thisMethod.ChildCount <> 0 then
		      thisMethod.Expanded = True
		    end if
		    
		    if thisMethod.Expanded then
		      me.Expanded( i ) = True
		    end if
		  next i
		  
		  if not profile IsA ProfileThread then
		    me.Cell( row, kColumnTimeSpent ) = format( profile.TimeSpent, "-#,0.00" )
		    me.Cell( row, kColumnAverageTime ) = format( profile.TimeSpent / profile.TimesCalled, "-#,0.00" )
		    me.Cell( row, kColumnPercent ) = format( profile.PercentOfTotal - profile.PercentChildren, "-##0.00" ) + "%"
		  end if
		  
		  profile.Expanded = True
		End Sub
	#tag EndEvent
	#tag Event
		Sub CollapseRow(row As Integer)
		  dim profile as ProfileBase = me.RowTag( row )
		  
		  dim collapseAll as Boolean
		  #if TargetMacOS or TargetWin32
		    collapseAll = Keyboard.OptionKey
		  #else
		    collapseAll = Keyboard.ControlKey
		  #endif
		  
		  if collapseAll then
		    dim cnt as Integer = profile.ChildCount
		    for i as Integer = 1 to cnt
		      dim newRow as Integer =  row + i
		      me.Expanded( newRow ) = False
		    next i
		  end if
		  
		  if not profile IsA ProfileThread then
		    me.Cell( row, kColumnTimeSpent ) = format( profile.TimeSpentTotal, "#,0.00" )
		    me.Cell( row, kColumnAverageTime ) = format( profile.TimeSpentTotal / profile.TimesCalled, "#,0.00" )
		  end if
		  
		  profile.Expanded = False
		  
		End Sub
	#tag EndEvent
	#tag Event
		Function SortColumn(column As Integer) As Boolean
		  if column < kColumnCalled then
		    me.SortedColumn = -1
		    me.HeadingIndex = -1
		  end if
		  
		  dim savedProfile as ProfileBase = m_LastSelectedMethodProfile
		  PopulateMethodsListBox()
		  m_LastSelectedMethodProfile = savedProfile
		  tmrFixMethodSelection.Mode = Timer.ModeSingle
		  
		  return True
		  
		End Function
	#tag EndEvent
	#tag Event
		Function CellBackgroundPaint(g As Graphics, row As Integer, column As Integer) As Boolean
		  If Me.Selected( row ) Then
		    return False
		  end if
		  
		  dim changeIt as Boolean = True
		  
		  dim profile as ProfileBase
		  if row < me.ListCount then
		    profile = me.RowTag( row )
		  end if
		  
		  if row = m_MouseOverRow then
		    g.ForeColor = MouseOverColor
		    g.FillRect( 0, 0, g.Width, g.Height )
		    m_MouseOverPrevious = m_MouseOverRow
		  elseif row < me.ListCount and profile <> nil and profile.Expanded then
		    g.ForeColor = ExpandedColor
		    g.FillRect( 0, 0, g.Width, g.Height )
		  else
		    changeIt = False
		  end if
		  
		  return changeIt
		  
		  #pragma unused column
		End Function
	#tag EndEvent
	#tag Event
		Sub MouseMove(X As Integer, Y As Integer)
		  dim row as Integer = me.RowFromXY( X, Y )
		  if row < 0 or row >= me.ListCount then
		    row = -1
		  end if
		  
		  if row <> m_MouseOverRow then
		    m_MouseOverRow = row
		    tmrUpdateMouseOverHighlighting.Mode = Timer.ModeSingle
		    tmrUpdateMouseOverHighlighting.Reset
		  end if
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  if m_MouseOverRow <> -1 then
		    m_MouseOverRow = -1
		    tmrUpdateMouseOverHighlighting.Mode = Timer.ModeSingle
		    tmrUpdateMouseOverHighlighting.Reset
		  end if
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub Change()
		  dim tag As Variant
		  if me.ListIndex <> -1 then
		    tag = me.RowTag( me.ListIndex )
		  end if
		  
		  m_LastSelectedMethodProfile = tag
		  
		End Sub
	#tag EndEvent
	#tag Event
		Function CellTextPaint(g As Graphics, row As Integer, column As Integer, x as Integer, y as Integer) As Boolean
		  If Me.RowTag( row ) IsA ProfileThread Then
		    g.TextFont = "System"
		    'g.TextSize = 10
		  end if
		  
		  #pragma unused column
		  #pragma unused x
		  #pragma unused y
		End Function
	#tag EndEvent
	#tag Event
		Function MouseWheel(X As Integer, Y As Integer, deltaX as Integer, deltaY as Integer) As Boolean
		  dim row as Integer = me.RowFromXY( X - me.Left, Y - me.Top )
		  if row < 0 or row >= me.ListCount then
		    row = -1
		  end if
		  
		  if row <> m_MouseOverRow then
		    m_MouseOverRow = row
		    tmrUpdateMouseOverHighlighting.Mode = Timer.ModeSingle
		    tmrUpdateMouseOverHighlighting.Reset
		  end if
		  
		  #pragma unused deltaX
		  #pragma unused deltaY
		  
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events tmrCheckForParentChange
	#tag Event
		Sub Action()
		  dim pFolder as FolderItem = ParentFolder
		  if pFolder is nil or not pFolder.Exists then
		    ShowMessageDialog( "The parent folder no longer exists.", "Close" )
		    Return
		  End If
		  
		  If m_ParentLastModDate Is Nil Then
		    m_ParentLastModDate = pFolder.ModificationDate
		  ElseIf m_ParentLastModDate.TotalSeconds <> pFolder.ModificationDate.TotalSeconds Then
		    ScanParentFolder
		  end if
		  
		  lblParentPath.Text = pFolder.NativePath
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events tmrFixMethodSelection
	#tag Event
		Sub Action()
		  dim savedProfile as ProfileBase = m_LastSelectedMethodProfile
		  
		  if savedProfile <> nil then
		    dim lastRow as Integer = lbMethods.ListCount - 1
		    for row as Integer = lastRow DownTo 0
		      if lbMethods.RowTag( row ) is savedProfile then
		        lbMethods.ListIndex = row
		        'lbMethods.Selected( row ) = True
		        exit
		      end if
		    next
		  end if
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events tmrUpdateMouseOverHighlighting
	#tag Event
		Sub Action()
		  dim oldRow as Integer = m_MouseOverPrevious
		  dim row as Integer = m_MouseOverRow
		  
		  if oldRow <> -1 then
		    lbMethods.InvalidateCell( oldRow, -1 )
		  end if
		  if row <> -1 then
		    lbMethods.InvalidateCell( row, -1 )
		  end if
		  
		  m_MouseOverPrevious = row
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events splitter1
	#tag Event
		Sub Moved(delta as integer)
		  lbProfiles.width = lbProfiles.Width + delta
		  lbMethods.width = lbMethods.Width - delta
		  
		  splitter1.Left = lbProfiles.Left + lbProfiles.Width
		  lbMethods.Left = splitter1.Left + splitter1.width
		End Sub
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
	#tag ViewProperty
		Name="MinimumWidth"
		Visible=true
		Group="Size"
		InitialValue="64"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinimumHeight"
		Visible=true
		Group="Size"
		InitialValue="64"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaximumWidth"
		Visible=true
		Group="Size"
		InitialValue="32000"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaximumHeight"
		Visible=true
		Group="Size"
		InitialValue="32000"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Type"
		Visible=true
		Group="Frame"
		InitialValue="0"
		Type="Types"
		EditorType="Enum"
		#tag EnumValues
			"0 - Document"
			"1 - Movable Modal"
			"2 - Modal Dialog"
			"3 - Floating Window"
			"4 - Plain Box"
			"5 - Shadowed Box"
			"6 - Rounded Window"
			"7 - Global Floating Window"
			"8 - Sheet Window"
			"9 - Metal Window"
			"11 - Modeless Dialog"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasCloseButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasMaximizeButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasMinimizeButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasFullScreenButton"
		Visible=true
		Group="Frame"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="DefaultLocation"
		Visible=true
		Group="Behavior"
		InitialValue="0"
		Type="Locations"
		EditorType="Enum"
		#tag EnumValues
			"0 - Default"
			"1 - Parent Window"
			"2 - Main Screen"
			"3 - Parent Window Screen"
			"4 - Stagger"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasBackgroundColor"
		Visible=true
		Group="Background"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="BackgroundColor"
		Visible=true
		Group="Background"
		InitialValue="&hFFFFFF"
		Type="Color"
		EditorType="Color"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Backdrop"
		Visible=true
		Group="Appearance"
		InitialValue=""
		Type="Picture"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Composite"
		Visible=true
		Group="Appearance"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="FullScreen"
		Visible=false
		Group="Appearance"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Height"
		Visible=true
		Group="Position"
		InitialValue="400"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="ImplicitInstance"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Interfaces"
		Visible=true
		Group="ID"
		InitialValue=""
		Type="String"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MacProcID"
		Visible=true
		Group="Appearance"
		InitialValue="0"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBar"
		Visible=true
		Group="Appearance"
		InitialValue=""
		Type="MenuBar"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBarVisible"
		Visible=false
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Name"
		Visible=true
		Group="ID"
		InitialValue=""
		Type="String"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Resizeable"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Super"
		Visible=true
		Group="ID"
		InitialValue=""
		Type="String"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Title"
		Visible=true
		Group="Appearance"
		InitialValue="Untitled"
		Type="String"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Visible"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Width"
		Visible=true
		Group="Position"
		InitialValue="600"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
#tag EndViewBehavior
