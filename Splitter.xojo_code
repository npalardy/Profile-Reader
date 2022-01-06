#tag Class
Protected Class Splitter
Inherits Canvas
	#tag CompatibilityFlags = TargetHasGUI
	#tag Event
		Sub Activate()
		  ' just to make it so no one messes with this event in an instance
		End Sub
	#tag EndEvent

	#tag Event
		Sub Close()
		  ' just to make it so no one messes with this event in an instance
		End Sub
	#tag EndEvent

	#tag Event
		Function ConstructContextualMenu(base as MenuItem, x as Integer, y as Integer) As Boolean
		  ' just to make it so no one messes with this event in an instance
		End Function
	#tag EndEvent

	#tag Event
		Function ContextualMenuAction(hitItem as MenuItem) As Boolean
		  ' just to make it so no one messes with this event in an instance
		End Function
	#tag EndEvent

	#tag Event
		Sub Deactivate()
		  ' just to make it so no one messes with this event in an instance
		End Sub
	#tag EndEvent

	#tag Event
		Sub DoubleClick(X As Integer, Y As Integer)
		  ' just to make it so no one messes with this event in an instance
		End Sub
	#tag EndEvent

	#tag Event
		Function DragEnter(obj As DragItem, action As Integer) As Boolean
		  ' just to make it so no one messes with this event in an instance
		End Function
	#tag EndEvent

	#tag Event
		Sub DragExit(obj As DragItem, action As Integer)
		  ' just to make it so no one messes with this event in an instance
		End Sub
	#tag EndEvent

	#tag Event
		Function DragOver(x As Integer, y As Integer, obj As DragItem, action As Integer) As Boolean
		  ' just to make it so no one messes with this event in an instance
		End Function
	#tag EndEvent

	#tag Event
		Sub DropObject(obj As DragItem, action As Integer)
		  ' just to make it so no one messes with this event in an instance
		End Sub
	#tag EndEvent

	#tag Event
		Sub EnableMenuItems()
		  ' just to make it so no one messes with this event in an instance
		End Sub
	#tag EndEvent

	#tag Event
		Sub GotFocus()
		  ' just to make it so no one messes with this event in an instance
		End Sub
	#tag EndEvent

	#tag Event
		Function KeyDown(Key As String) As Boolean
		  ' just to make it so no one messes with this event in an instance
		End Function
	#tag EndEvent

	#tag Event
		Sub KeyUp(Key As String)
		  ' just to make it so no one messes with this event in an instance
		End Sub
	#tag EndEvent

	#tag Event
		Sub LostFocus()
		  ' just to make it so no one messes with this event in an instance
		End Sub
	#tag EndEvent

	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  Me.lastX = System.MouseX
		  Me.lastY = System.MouseY
		  
		  call RaiseEvent MouseDown(X,Y) 
		  
		  Return True
		  
		  
		End Function
	#tag EndEvent

	#tag Event
		Sub MouseDrag(X As Integer, Y As Integer)
		  MoveSplitter
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub MouseEnter()
		  ' just to make it so no one messes with this event in an instance
		End Sub
	#tag EndEvent

	#tag Event
		Sub MouseExit()
		  ' just to make it so no one messes with this event in an instance
		End Sub
	#tag EndEvent

	#tag Event
		Sub MouseMove(X As Integer, Y As Integer)
		  ' just to make it so no one messes with this event in an instance
		End Sub
	#tag EndEvent

	#tag Event
		Sub MouseUp(X As Integer, Y As Integer)
		  
		  MouseUp(X, Y)
		  
		  
		  
		End Sub
	#tag EndEvent

	#tag Event
		Function MouseWheel(X As Integer, Y As Integer, deltaX as Integer, deltaY as Integer) As Boolean
		  ' just to make it so no one messes with this event in an instance
		End Function
	#tag EndEvent

	#tag Event
		Sub Open()
		  If Me.Width > Me.Height Then
		    Me.MouseCursor = System.Cursors.SplitterNorthSouth
		    Me.IsHorizontalSplitter = True
		    
		  Else
		    Me.MouseCursor = System.Cursors.SplitterEastWest
		    Me.IsHorizontalSplitter = False
		    
		  End If
		  
		  Open
		  
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub Paint(g As Graphics, areas() As REALbasic.Rect)
		  RaiseEvent Paint(g)
		  ' Draw a little handle at the middle of the splitter region.
		  
		  #If targetWindows
		    g.forecolor = &cADADAD00
		    If IsVertical Then
		      g.drawline 0,0,0, g.height
		      g.drawline g.width-1,0,g.width-1, g.height
		    Else
		      g.drawline 0,0,g.width,0 
		      g.drawline 0,g.height-1,g.width-1, g.height-1
		    End If
		  #EndIf
		  
		  If DrawHandles Then
		    
		    If Me.Active And Me.Enabled And Me.Visible Then
		      ' Draw a little handle at the middle of the splitter region.
		      Dim x,y As Integer
		      
		      x = (Me.Width / 2) - (kHandleSize/2)
		      y = (Me.Height / 2) - (kHandleSize/2)
		      
		      DrawHandlePoint(g,x,y)
		      
		      Const drawLines = False
		      Const margin = 32
		      
		      If IsVertical Then
		        
		        #If drawLines
		          g.ForeColor = GrabHandleColor(g)
		          g.DrawLine x, margin, x, y - margin
		          g.DrawLine x, y + margin, x, Me.Height - margin
		        #EndIf
		        DrawHandlePoint(g,x,y-4)
		        DrawHandlePoint(g,x,y-8)
		        DrawHandlePoint(g,x,y+4)
		        DrawHandlePoint(g,x,y+8)
		      Else
		        #If drawLines
		          g.ForeColor = GrabHandleColor(g)
		          g.DrawLine margin, y, x - margin, y
		          g.DrawLine x + margin, y, Me.Width - margin, y
		        #EndIf
		        DrawHandlePoint(g,x+4,y)
		        DrawHandlePoint(g,x+8,y)
		        DrawHandlePoint(g,x-4,y)
		        DrawHandlePoint(g,x-8,y)
		      End If
		      
		    End If
		    
		  End If
		End Sub
	#tag EndEvent

	#tag Event
		Sub ScaleFactorChanged()
		  ' just to make it so no one messes with this event in an instance
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h1
		Protected Sub DrawHandlePoint(g As Graphics, x As Integer, y As Integer)
		  #Pragma BreakOnExceptions False
		  Try
		    g.ForeColor = GrabHandleColor(g)
		    
		    g.FillOval x,y,kHandleSize, kHandleSize
		  Catch oob As OutOfBoundsException
		    // ignore
		  End Try
		  #Pragma BreakOnExceptions Default
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function GrabHandleColor(g as graphics) As Color
		  If Color.IsDarkMode Then
		    
		    Return kDarkModeHandleColor
		    
		  Else 
		    
		    Return kLightModeHandleColor
		    
		  End If
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Function IsVertical() As Boolean
		  Return Height > Width
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MoveSplitter(MoveX As Integer = 0, MoveY As Integer = 0)
		  // We can pass optional parameters MoveX and MoveY
		  // to this method when we programaticaly want to move
		  // a splitter to a different position.
		  //
		  // MoveX designates the number of pixels for the splitter to move
		  // to the right (positive) or to the left (negative value)
		  // MoveY designates the number of pixels for the splitter to move
		  // downwards (positive) or upwards (negative value)
		  //
		  // If we call the method without any parameters, the move is calculated
		  // from the difference between the last mousedown coordinates
		  // (see MouseDown event handler) and the current mouse position
		  // (System.MouseX, ..Y)
		  // ================================================================
		  
		  // Initialize variables
		  Dim dx As Integer = MoveX
		  Dim dy As Integer = MoveY
		  Dim mx As Integer = System.MouseX
		  Dim my As Integer = System.MouseY
		  
		  // If no paramter values were received, then
		  // calculate number of pixels to move the splitter
		  If MoveX = 0 Then 
		    dx = -lastX + mx
		  End If
		  If MoveY = 0 Then 
		    dy = -lastY + my
		  End If
		  
		  // The MouseDrag event fires contiuously and gets queued up.
		  // Try exiting here if the mouse did not move
		  If dx = 0 And dy = 0 Then
		    Return
		  End If
		  
		  // *****************************************************************
		  // Note: IsHorizontalSplitter is set in Open event. There we decide
		  // from the initial dimensions of the splitter whether we treat it
		  // as a horizontal or vertical splitter.
		  // *****************************************************************
		  
		  If Me.IsHorizontalSplitter Then
		    
		    Dim t As Integer = Me.Top + dy
		    
		    Me.Top = t
		    
		    Moved(dy)
		    
		  Else
		    
		    dim l as integer = Me.Left + dx
		    
		    Me.Left = l
		    
		    Moved(dx)
		    
		  End If
		  
		  // Store current Mouse position
		  lastx = System.Mousex
		  lasty = System.Mousey
		  
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event MouseDown(X As Integer, Y As Integer) As Boolean
	#tag EndHook

	#tag Hook, Flags = &h0
		Event MouseDrag(X As Integer, Y As Integer)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event MouseUp(X As Integer, Y As Integer)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event Moved(delta as integer)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event Open()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event Paint(g As Graphics)
	#tag EndHook


	#tag Property, Flags = &h0
		DrawHandles As Boolean = False
	#tag EndProperty

	#tag Property, Flags = &h0
		HasBackColor As Boolean = False
	#tag EndProperty

	#tag Property, Flags = &h21
		Private IsHorizontalSplitter As Boolean = False
	#tag EndProperty

	#tag Property, Flags = &h21
		Private lastX As Integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private lastY As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		SplitterColor As Color
	#tag EndProperty


	#tag Constant, Name = kDarkModeHandleColor, Type = Color, Dynamic = False, Default = \"&cB6B6B6", Scope = Private
		#Tag Instance, Platform = Mac OS, Language = Default, Definition  = \"&cB6B6B6"
		#Tag Instance, Platform = Windows, Language = Default, Definition  = \"&cB6B6B6"
	#tag EndConstant

	#tag Constant, Name = kHandleSize, Type = Double, Dynamic = False, Default = \"3", Scope = Protected
	#tag EndConstant

	#tag Constant, Name = kLightModeHandleColor, Type = Color, Dynamic = False, Default = \"&c373737", Scope = Private
		#Tag Instance, Platform = Mac OS, Language = Default, Definition  = \"&c373737"
		#Tag Instance, Platform = Windows, Language = Default, Definition  = \"&c373737"
	#tag EndConstant


	#tag ViewBehavior
		#tag ViewProperty
			Name="AllowAutoDeactivate"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Tooltip"
			Visible=true
			Group="Appearance"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AllowFocusRing"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="AllowFocus"
			Visible=true
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="AllowTabs"
			Visible=true
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
			EditorType=""
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
			Name="DoubleBuffer"
			Visible=true
			Group="Behavior"
			InitialValue="True"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="DrawHandles"
			Visible=true
			Group="Appearance"
			InitialValue="False"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Enabled"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="HasBackColor"
			Visible=true
			Group="Appearance"
			InitialValue="False"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Height"
			Visible=true
			Group="Position"
			InitialValue="200"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="InitialParent"
			Visible=false
			Group="Initial State"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockBottom"
			Visible=true
			Group="Position"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockLeft"
			Visible=true
			Group="Position"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockRight"
			Visible=true
			Group="Position"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockTop"
			Visible=true
			Group="Position"
			InitialValue=""
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
			Name="Super"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="TabIndex"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="TabPanelIndex"
			Visible=false
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="TabStop"
			Visible=true
			Group="Position"
			InitialValue="True"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Transparent"
			Visible=true
			Group="Behavior"
			InitialValue="True"
			Type="Boolean"
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
			InitialValue="10"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="SplitterColor"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
