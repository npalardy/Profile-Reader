#tag Class
Protected Class ProfileBase
	#tag Method, Flags = &h0
		Function ChildCount() As Integer
		  return RaiseEvent GetChildCount()
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub Constructor(myParent As ProfileBase, data As ProfileLineData)
		  m_Parent = New WeakRef( myParent )
		  m_TimesCalled = data.TimesCalled
		  m_TimeSpentTotal = data.TimeSpent
		  m_PercentOfTotal = data.PercentOfTotal
		  
		  RaiseEvent ConstructFromData( data )
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ID() As String
		  return m_ID
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function PercentChildren() As Double
		  return m_PercentChildren
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function PercentOfTotal() As Double
		  return m_PercentOfTotal
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function TimesCalled() As Integer
		  return m_TimesCalled
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function TimeSpentChildren() As Double
		  return m_TimeSpentChildren
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function TimeSpentTotal() As Double
		  return m_TimeSpentTotal
		  
		  
		End Function
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event ConstructFromData(data As ProfileLineData)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event GetChildCount() As Integer
	#tag EndHook


	#tag Property, Flags = &h0
		#tag Note
			Used to keep track of whether this item is expanded in a ListBox
		#tag EndNote
		Expanded As Boolean
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected m_ID As String
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected m_Parent As WeakRef
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected m_PercentChildren As Double
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected m_PercentOfTotal As Double
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected m_TimesCalled As Integer
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected m_TimeSpentChildren As Double
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected m_TimeSpentTotal As Double
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  dim r as ProfileBase
			  
			  if m_Parent <> nil then
			    dim o as Object = m_Parent.Value
			    if o <> nil then
			      r = ProfileBase( o )
			    end if
			  end if
			  
			  return r
			  
			End Get
		#tag EndGetter
		Parent As ProfileBase
	#tag EndComputedProperty

	#tag Property, Flags = &h0
		#tag Note
			Used to keep track of whether this item is selected in a ListBox
		#tag EndNote
		Selected As Boolean
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return m_TimeSpentTotal - m_TimeSpentChildren
			  
			End Get
		#tag EndGetter
		TimeSpent As Double
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Expanded"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
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
			Name="Selected"
			Visible=false
			Group="Behavior"
			InitialValue=""
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
			Name="TimeSpent"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
