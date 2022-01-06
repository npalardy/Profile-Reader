#tag Class
Protected Class ProfileDocument
Inherits ProfileBase
	#tag Event
		Function GetChildCount() As Integer
		  return if( m_ThreadsDict is nil, 0, m_ThreadsDict.Count )
		End Function
	#tag EndEvent


	#tag Method, Flags = &h1001
		Protected Sub Constructor(doc As FolderItem, docDate As Date, secondCount As Integer, text As String)
		  m_Document = doc
		  m_StartDate = docDate
		  m_Seconds = secondCount
		  
		  text = text.Trim
		  dim lines() as String = Split( text, EndOfLine.UNIX )
		  
		  m_ThreadsDict = new Dictionary
		  
		  for index as Integer = 0 to lines.Ubound
		    dim data as new ProfileLineData( lines( index ) )
		    if data.ThreadName = "" then continue // Shouldn't happen
		    
		    dim thd as ProfileThread
		    if m_ThreadsDict.HasKey( data.ThreadName ) then
		      thd = m_ThreadsDict.Value( data.ThreadName )
		      thd.Add( data )
		    else
		      thd = new ProfileThread( me, data )
		      m_ThreadsDict.Value( data.ThreadName ) = thd
		    end if
		  next index
		  
		  m_ID = EncodeHex( Crypto.SHA256( docDate.SQLDateTime + EndOfLine.Unix + text ) )
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function CreateFromDocument(doc As FolderItem) As ProfileDocument
		  if doc is nil or not doc.Exists or doc.Directory then
		    return nil
		  end if
		  
		  dim r as ProfileDocument
		  
		  dim text as String
		  dim tis as TextInputStream = TextInputStream.Open( doc )
		  if tis <> nil then
		    tis.Encoding = Encodings.UTF8
		    text = tis.ReadAll
		    tis.Close
		    tis = nil
		    
		    text = ReplaceLineEndings( text, EndOfLine.UNIX )
		    
		    static rx as RegEx
		    if rx is nil then
		      rx = new RegEx
		      rx.SearchPattern = "(?si-Um)\A(?'date'\d{4}-\d{2}-\d{2} \d{2}:\d{2}:\d{2})\R(?'secs'\d+(?:[.,]\d*)?)\R(?'text'.+)"
		    end if
		    
		    dim match as RegExMatch = rx.Search( text )
		    if match <> nil then
		      dim profileDate as new Date
		      profileDate.SQLDateTime = match.SubExpressionString( 1 )
		      dim secondCount as Integer = match.SubExpressionString( 2 ).CDbl
		      text = match.SubExpressionString( 3 )
		      
		      r = new ProfileDocument( doc, profileDate, secondCount, text )
		    end if
		  end if
		  
		  return r
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Operator_Convert() As String
		  return m_ID
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Seconds() As Integer
		  return m_Seconds
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function StartDate() As Date
		  if m_StartDate <> nil then
		    return new Date( m_StartDate )
		  else
		    return nil
		  end if
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Threads() As ProfileThread()
		  dim r() as ProfileThread
		  If m_ThreadsDict Is Nil Then 
		    Return r
		  End If
		  
		  dim values() as Variant = m_ThreadsDict.Values
		  dim sorter() as String
		  for each item as ProfileThread in values
		    r.Append item
		    sorter.Append item.Name
		  next
		  
		  sorter.SortWith r
		  return r
		  
		End Function
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  dim r as FolderItem
			  if m_Document <> nil then
			    r = m_Document
			  end if
			  
			  return r
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  m_Document = value
			  
			End Set
		#tag EndSetter
		Document As FolderItem
	#tag EndComputedProperty

	#tag Property, Flags = &h1
		Protected m_Document As FolderItemAlias
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected m_Seconds As Integer
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected m_StartDate As Date
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected m_ThreadsDict As Dictionary
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
