# TableViewWithCustomSectionHeaderView

## Expand Rows When Click on Section Header

- Implemented by adding a property `expanded` in `Color.h`. 
But this isn't the ideal way for expanded is not a character managed by Color.
Better to have another dataSource array in `PaletteViewController`

- Fix constraint warning by changing priority of label in sectionHeaderView to 999
![alt tag](https://github.com/naverdant/TableViewWithCustomSectionHeaderView/blob/master/constraintBug.png)


## Reference
[Guide to Customizing UITableView Section Header/Footer](http://samwize.com/2015/11/06/guide-to-customizing-uitableview-section-header-footer/)

[List of Colors with Color Names](https://graf1x.com/list-of-colors-with-color-names/)

[What is NSLayoutConstraint “UIView-Encapsulated-Layout-Height” and how should I go about forcing it to recalculate cleanly?](https://stackoverflow.com/questions/25059443/what-is-nslayoutconstraint-uiview-encapsulated-layout-height-and-how-should-i)

[如何在 iOS Apps 創建展開式 UITableView](https://www.appcoda.com.tw/expandable-table-view/)
