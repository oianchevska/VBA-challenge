Sub StockMarketAnalyst()Dim LastRow As LongDim j As IntegerFor Each Sheet In Worksheets    Sheet.Cells(1, 9) = "Ticker"    LastRow = Sheet.Cells(Rows.Count, 1).End(xlUp).Row    j = 2   For i = 2 To LastRow      If Sheet.Cells(i, 1).Value <> Sheet.Cells(i + 1, 1) Then      Sheet.Cells(j, 9).Value = Sheet.Cells(i, 1).Value      j = j + 1          End IfNext iNext SheetEnd Sub