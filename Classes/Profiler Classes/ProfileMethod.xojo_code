#tag Class
Protected Class ProfileMethod
Inherits ProfileBase
	#tag Event
		Sub ConstructFromData(data As ProfileLineData)
		  m_MethodsDict = new Dictionary
		  m_Name = data.MethodNames( data.MethodIndex )
		  m_ID = data.Hash
		  
		  Add( data )
		  
		End Sub
	#tag EndEvent

	#tag Event
		Function GetChildCount() As Integer
		  return if( m_MethodsDict is nil, 0, m_MethodsDict.Count )
		End Function
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub Add(data As ProfileLineData)
		  data.MethodIndex = data.MethodIndex + 1
		  If data.MethodIndex > data.MethodNames.Ubound Then 
		    Return
		  End If
		  
		  dim methodName as String = data.MethodNames( data.MethodIndex )
		  dim m as ProfileMethod
		  if m_MethodsDict.HasKey( methodName ) then
		    m = m_MethodsDict.Value( methodName )
		    m.Add( data )
		  else
		    m = new ProfileMethod( me, data )
		    m_MethodsDict.Value( methodName ) = m
		    m_TimeSpentChildren = m_TimeSpentChildren + data.TimeSpent
		    m_PercentChildren = m_PercentChildren + data.PercentOfTotal
		  end if
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Methods() As ProfileMethod()
		  dim r() as ProfileMethod
		  If m_MethodsDict Is Nil Then 
		    Return r
		  End If
		  
		  dim values() as Variant = m_MethodsDict.Values
		  dim sorter() as String
		  for each item as ProfileMethod in values
		    r.Append item
		    sorter.Append item.Name
		  next item
		  
		  sorter.SortWith r
		  return r
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Name() As String
		  return m_Name
		End Function
	#tag EndMethod


	#tag Property, Flags = &h1
		Protected m_MethodsDict As Dictionary
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected m_Name As String
	#tag EndProperty


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
