 <!-- This frameset document includes the FolderTree script.  Script found in: http://www.treeview.net Author: Marcelino Alves Martins -->
 ICONPATH = 'Support/'
 USEICONS = 1
{
foldersTree = gFld('', 'title.htm')
foldersTree.iconSrc = ICONPATH + 'Gif/iconHome.gif'
Diag_Node = insFld(foldersTree, gFld('Dictionary Objects', ''))
Diag_Node.iconSrc = ICONPATH + 'Gif/physical.gif'
Diag_Node.iconSrcClosed = ICONPATH + 'Gif/physical.gif'
{
DD_1 = insFld(Diag_Node, gFld('AdventureWorks',''))
DD_1.iconSrc = ICONPATH + 'Gif/dimensionalmodel.gif'
DD_1.iconSrcClosed = ICONPATH + 'Gif/dimensionalmodel.gif'
DD_1A  = insFld(DD_1, gFld('Tables','table.html'))
DD_1A.iconSrc = ICONPATH + 'Gif/bluefldr.gif'
DD_1A.iconSrcClosed = ICONPATH +'Gif/blueclsd.gif'
DomainSection_1 = insFld(DD_1A, gFld('AWBuildVersion','table.html#AWBuildVersion'))
DomainSection_1.iconSrc = ICONPATH + 'Gif/table.png'
DomainSection_1.iconSrcClosed = ICONPATH +'Gif/table.png'
DomainSection_2 = insFld(DD_1A, gFld('Address','table.html#Address'))
DomainSection_2.iconSrc = ICONPATH + 'Gif/table.png'
DomainSection_2.iconSrcClosed = ICONPATH +'Gif/table.png'
DomainSection_3 = insFld(DD_1A, gFld('AddressType','table.html#AddressType'))
DomainSection_3.iconSrc = ICONPATH + 'Gif/table.png'
DomainSection_3.iconSrcClosed = ICONPATH +'Gif/table.png'
DomainSection_4 = insFld(DD_1A, gFld('BillOfMaterials','table.html#BillOfMaterials'))
DomainSection_4.iconSrc = ICONPATH + 'Gif/table.png'
DomainSection_4.iconSrcClosed = ICONPATH +'Gif/table.png'
DomainSection_5 = insFld(DD_1A, gFld('Contact','table.html#Contact'))
DomainSection_5.iconSrc = ICONPATH + 'Gif/table.png'
DomainSection_5.iconSrcClosed = ICONPATH +'Gif/table.png'
DomainSection_6 = insFld(DD_1A, gFld('ContactCreditCard','table.html#ContactCreditCard'))
DomainSection_6.iconSrc = ICONPATH + 'Gif/table.png'
DomainSection_6.iconSrcClosed = ICONPATH +'Gif/table.png'
DomainSection_7 = insFld(DD_1A, gFld('ContactType','table.html#ContactType'))
DomainSection_7.iconSrc = ICONPATH + 'Gif/table.png'
DomainSection_7.iconSrcClosed = ICONPATH +'Gif/table.png'
DomainSection_8 = insFld(DD_1A, gFld('CountryRegion','table.html#CountryRegion'))
DomainSection_8.iconSrc = ICONPATH + 'Gif/table.png'
DomainSection_8.iconSrcClosed = ICONPATH +'Gif/table.png'
DomainSection_9 = insFld(DD_1A, gFld('CountryRegionCurrency','table.html#CountryRegionCurrency'))
DomainSection_9.iconSrc = ICONPATH + 'Gif/table.png'
DomainSection_9.iconSrcClosed = ICONPATH +'Gif/table.png'
DomainSection_10 = insFld(DD_1A, gFld('CreditCard','table.html#CreditCard'))
DomainSection_10.iconSrc = ICONPATH + 'Gif/table.png'
DomainSection_10.iconSrcClosed = ICONPATH +'Gif/table.png'
DomainSection_11 = insFld(DD_1A, gFld('Culture','table.html#Culture'))
DomainSection_11.iconSrc = ICONPATH + 'Gif/table.png'
DomainSection_11.iconSrcClosed = ICONPATH +'Gif/table.png'
DomainSection_12 = insFld(DD_1A, gFld('Currency','table.html#Currency'))
DomainSection_12.iconSrc = ICONPATH + 'Gif/table.png'
DomainSection_12.iconSrcClosed = ICONPATH +'Gif/table.png'
DomainSection_13 = insFld(DD_1A, gFld('CurrencyRate','table.html#CurrencyRate'))
DomainSection_13.iconSrc = ICONPATH + 'Gif/table.png'
DomainSection_13.iconSrcClosed = ICONPATH +'Gif/table.png'
DomainSection_14 = insFld(DD_1A, gFld('Customer','table.html#Customer'))
DomainSection_14.iconSrc = ICONPATH + 'Gif/table.png'
DomainSection_14.iconSrcClosed = ICONPATH +'Gif/table.png'
DomainSection_15 = insFld(DD_1A, gFld('CustomerAddress','table.html#CustomerAddress'))
DomainSection_15.iconSrc = ICONPATH + 'Gif/table.png'
DomainSection_15.iconSrcClosed = ICONPATH +'Gif/table.png'
DomainSection_16 = insFld(DD_1A, gFld('DatabaseLog','table.html#DatabaseLog'))
DomainSection_16.iconSrc = ICONPATH + 'Gif/table.png'
DomainSection_16.iconSrcClosed = ICONPATH +'Gif/table.png'
DomainSection_17 = insFld(DD_1A, gFld('Department','table.html#Department'))
DomainSection_17.iconSrc = ICONPATH + 'Gif/table.png'
DomainSection_17.iconSrcClosed = ICONPATH +'Gif/table.png'
DomainSection_18 = insFld(DD_1A, gFld('Document','table.html#Document'))
DomainSection_18.iconSrc = ICONPATH + 'Gif/table.png'
DomainSection_18.iconSrcClosed = ICONPATH +'Gif/table.png'
DomainSection_19 = insFld(DD_1A, gFld('Employee','table.html#Employee'))
DomainSection_19.iconSrc = ICONPATH + 'Gif/table.png'
DomainSection_19.iconSrcClosed = ICONPATH +'Gif/table.png'
DomainSection_20 = insFld(DD_1A, gFld('EmployeeAddress','table.html#EmployeeAddress'))
DomainSection_20.iconSrc = ICONPATH + 'Gif/table.png'
DomainSection_20.iconSrcClosed = ICONPATH +'Gif/table.png'
DomainSection_21 = insFld(DD_1A, gFld('EmployeeDepartmentHistory','table.html#EmployeeDepartmentHistory'))
DomainSection_21.iconSrc = ICONPATH + 'Gif/table.png'
DomainSection_21.iconSrcClosed = ICONPATH +'Gif/table.png'
DomainSection_22 = insFld(DD_1A, gFld('EmployeePayHistory','table.html#EmployeePayHistory'))
DomainSection_22.iconSrc = ICONPATH + 'Gif/table.png'
DomainSection_22.iconSrcClosed = ICONPATH +'Gif/table.png'
DomainSection_23 = insFld(DD_1A, gFld('ErrorLog','table.html#ErrorLog'))
DomainSection_23.iconSrc = ICONPATH + 'Gif/table.png'
DomainSection_23.iconSrcClosed = ICONPATH +'Gif/table.png'
DomainSection_24 = insFld(DD_1A, gFld('Illustration','table.html#Illustration'))
DomainSection_24.iconSrc = ICONPATH + 'Gif/table.png'
DomainSection_24.iconSrcClosed = ICONPATH +'Gif/table.png'
DomainSection_25 = insFld(DD_1A, gFld('Individual','table.html#Individual'))
DomainSection_25.iconSrc = ICONPATH + 'Gif/table.png'
DomainSection_25.iconSrcClosed = ICONPATH +'Gif/table.png'
DomainSection_26 = insFld(DD_1A, gFld('JobCandidate','table.html#JobCandidate'))
DomainSection_26.iconSrc = ICONPATH + 'Gif/table.png'
DomainSection_26.iconSrcClosed = ICONPATH +'Gif/table.png'
DomainSection_27 = insFld(DD_1A, gFld('Location','table.html#Location'))
DomainSection_27.iconSrc = ICONPATH + 'Gif/table.png'
DomainSection_27.iconSrcClosed = ICONPATH +'Gif/table.png'
DomainSection_28 = insFld(DD_1A, gFld('Product','table.html#Product'))
DomainSection_28.iconSrc = ICONPATH + 'Gif/table.png'
DomainSection_28.iconSrcClosed = ICONPATH +'Gif/table.png'
DomainSection_29 = insFld(DD_1A, gFld('ProductCategory','table.html#ProductCategory'))
DomainSection_29.iconSrc = ICONPATH + 'Gif/table.png'
DomainSection_29.iconSrcClosed = ICONPATH +'Gif/table.png'
DomainSection_30 = insFld(DD_1A, gFld('ProductCostHistory','table.html#ProductCostHistory'))
DomainSection_30.iconSrc = ICONPATH + 'Gif/table.png'
DomainSection_30.iconSrcClosed = ICONPATH +'Gif/table.png'
DomainSection_31 = insFld(DD_1A, gFld('ProductDescription','table.html#ProductDescription'))
DomainSection_31.iconSrc = ICONPATH + 'Gif/table.png'
DomainSection_31.iconSrcClosed = ICONPATH +'Gif/table.png'
DomainSection_32 = insFld(DD_1A, gFld('ProductDocument','table.html#ProductDocument'))
DomainSection_32.iconSrc = ICONPATH + 'Gif/table.png'
DomainSection_32.iconSrcClosed = ICONPATH +'Gif/table.png'
DomainSection_33 = insFld(DD_1A, gFld('ProductInventory','table.html#ProductInventory'))
DomainSection_33.iconSrc = ICONPATH + 'Gif/table.png'
DomainSection_33.iconSrcClosed = ICONPATH +'Gif/table.png'
DomainSection_34 = insFld(DD_1A, gFld('ProductListPriceHistory','table.html#ProductListPriceHistory'))
DomainSection_34.iconSrc = ICONPATH + 'Gif/table.png'
DomainSection_34.iconSrcClosed = ICONPATH +'Gif/table.png'
DomainSection_35 = insFld(DD_1A, gFld('ProductModel','table.html#ProductModel'))
DomainSection_35.iconSrc = ICONPATH + 'Gif/table.png'
DomainSection_35.iconSrcClosed = ICONPATH +'Gif/table.png'
DomainSection_36 = insFld(DD_1A, gFld('ProductModelIllustration','table.html#ProductModelIllustration'))
DomainSection_36.iconSrc = ICONPATH + 'Gif/table.png'
DomainSection_36.iconSrcClosed = ICONPATH +'Gif/table.png'
DomainSection_37 = insFld(DD_1A, gFld('ProductModelProductDescriptionCulture','table.html#ProductModelProductDescriptionCulture'))
DomainSection_37.iconSrc = ICONPATH + 'Gif/table.png'
DomainSection_37.iconSrcClosed = ICONPATH +'Gif/table.png'
DomainSection_38 = insFld(DD_1A, gFld('ProductPhoto','table.html#ProductPhoto'))
DomainSection_38.iconSrc = ICONPATH + 'Gif/table.png'
DomainSection_38.iconSrcClosed = ICONPATH +'Gif/table.png'
DomainSection_39 = insFld(DD_1A, gFld('ProductProductPhoto','table.html#ProductProductPhoto'))
DomainSection_39.iconSrc = ICONPATH + 'Gif/table.png'
DomainSection_39.iconSrcClosed = ICONPATH +'Gif/table.png'
DomainSection_40 = insFld(DD_1A, gFld('ProductReview','table.html#ProductReview'))
DomainSection_40.iconSrc = ICONPATH + 'Gif/table.png'
DomainSection_40.iconSrcClosed = ICONPATH +'Gif/table.png'
DomainSection_41 = insFld(DD_1A, gFld('ProductSubcategory','table.html#ProductSubcategory'))
DomainSection_41.iconSrc = ICONPATH + 'Gif/table.png'
DomainSection_41.iconSrcClosed = ICONPATH +'Gif/table.png'
DomainSection_42 = insFld(DD_1A, gFld('ProductVendor','table.html#ProductVendor'))
DomainSection_42.iconSrc = ICONPATH + 'Gif/table.png'
DomainSection_42.iconSrcClosed = ICONPATH +'Gif/table.png'
DomainSection_43 = insFld(DD_1A, gFld('PurchaseOrderDetail','table.html#PurchaseOrderDetail'))
DomainSection_43.iconSrc = ICONPATH + 'Gif/table.png'
DomainSection_43.iconSrcClosed = ICONPATH +'Gif/table.png'
DomainSection_44 = insFld(DD_1A, gFld('PurchaseOrderHeader','table.html#PurchaseOrderHeader'))
DomainSection_44.iconSrc = ICONPATH + 'Gif/table.png'
DomainSection_44.iconSrcClosed = ICONPATH +'Gif/table.png'
DomainSection_45 = insFld(DD_1A, gFld('SalesOrderDetail','table.html#SalesOrderDetail'))
DomainSection_45.iconSrc = ICONPATH + 'Gif/table.png'
DomainSection_45.iconSrcClosed = ICONPATH +'Gif/table.png'
DomainSection_46 = insFld(DD_1A, gFld('SalesOrderHeader','table.html#SalesOrderHeader'))
DomainSection_46.iconSrc = ICONPATH + 'Gif/table.png'
DomainSection_46.iconSrcClosed = ICONPATH +'Gif/table.png'
DomainSection_47 = insFld(DD_1A, gFld('SalesOrderHeaderSalesReason','table.html#SalesOrderHeaderSalesReason'))
DomainSection_47.iconSrc = ICONPATH + 'Gif/table.png'
DomainSection_47.iconSrcClosed = ICONPATH +'Gif/table.png'
DomainSection_48 = insFld(DD_1A, gFld('SalesPerson','table.html#SalesPerson'))
DomainSection_48.iconSrc = ICONPATH + 'Gif/table.png'
DomainSection_48.iconSrcClosed = ICONPATH +'Gif/table.png'
DomainSection_49 = insFld(DD_1A, gFld('SalesPersonQuotaHistory','table.html#SalesPersonQuotaHistory'))
DomainSection_49.iconSrc = ICONPATH + 'Gif/table.png'
DomainSection_49.iconSrcClosed = ICONPATH +'Gif/table.png'
DomainSection_50 = insFld(DD_1A, gFld('SalesReason','table.html#SalesReason'))
DomainSection_50.iconSrc = ICONPATH + 'Gif/table.png'
DomainSection_50.iconSrcClosed = ICONPATH +'Gif/table.png'
DomainSection_51 = insFld(DD_1A, gFld('SalesTaxRate','table.html#SalesTaxRate'))
DomainSection_51.iconSrc = ICONPATH + 'Gif/table.png'
DomainSection_51.iconSrcClosed = ICONPATH +'Gif/table.png'
DomainSection_52 = insFld(DD_1A, gFld('SalesTerritory','table.html#SalesTerritory'))
DomainSection_52.iconSrc = ICONPATH + 'Gif/table.png'
DomainSection_52.iconSrcClosed = ICONPATH +'Gif/table.png'
DomainSection_53 = insFld(DD_1A, gFld('SalesTerritoryHistory','table.html#SalesTerritoryHistory'))
DomainSection_53.iconSrc = ICONPATH + 'Gif/table.png'
DomainSection_53.iconSrcClosed = ICONPATH +'Gif/table.png'
DomainSection_54 = insFld(DD_1A, gFld('ScrapReason','table.html#ScrapReason'))
DomainSection_54.iconSrc = ICONPATH + 'Gif/table.png'
DomainSection_54.iconSrcClosed = ICONPATH +'Gif/table.png'
DomainSection_55 = insFld(DD_1A, gFld('Shift','table.html#Shift'))
DomainSection_55.iconSrc = ICONPATH + 'Gif/table.png'
DomainSection_55.iconSrcClosed = ICONPATH +'Gif/table.png'
DomainSection_56 = insFld(DD_1A, gFld('ShipMethod','table.html#ShipMethod'))
DomainSection_56.iconSrc = ICONPATH + 'Gif/table.png'
DomainSection_56.iconSrcClosed = ICONPATH +'Gif/table.png'
DomainSection_57 = insFld(DD_1A, gFld('ShoppingCartItem','table.html#ShoppingCartItem'))
DomainSection_57.iconSrc = ICONPATH + 'Gif/table.png'
DomainSection_57.iconSrcClosed = ICONPATH +'Gif/table.png'
DomainSection_58 = insFld(DD_1A, gFld('SpecialOffer','table.html#SpecialOffer'))
DomainSection_58.iconSrc = ICONPATH + 'Gif/table.png'
DomainSection_58.iconSrcClosed = ICONPATH +'Gif/table.png'
DomainSection_59 = insFld(DD_1A, gFld('SpecialOfferProduct','table.html#SpecialOfferProduct'))
DomainSection_59.iconSrc = ICONPATH + 'Gif/table.png'
DomainSection_59.iconSrcClosed = ICONPATH +'Gif/table.png'
DomainSection_60 = insFld(DD_1A, gFld('StateProvince','table.html#StateProvince'))
DomainSection_60.iconSrc = ICONPATH + 'Gif/table.png'
DomainSection_60.iconSrcClosed = ICONPATH +'Gif/table.png'
DomainSection_61 = insFld(DD_1A, gFld('Store','table.html#Store'))
DomainSection_61.iconSrc = ICONPATH + 'Gif/table.png'
DomainSection_61.iconSrcClosed = ICONPATH +'Gif/table.png'
DomainSection_62 = insFld(DD_1A, gFld('StoreContact','table.html#StoreContact'))
DomainSection_62.iconSrc = ICONPATH + 'Gif/table.png'
DomainSection_62.iconSrcClosed = ICONPATH +'Gif/table.png'
DomainSection_63 = insFld(DD_1A, gFld('TransactionHistory','table.html#TransactionHistory'))
DomainSection_63.iconSrc = ICONPATH + 'Gif/table.png'
DomainSection_63.iconSrcClosed = ICONPATH +'Gif/table.png'
DomainSection_64 = insFld(DD_1A, gFld('TransactionHistoryArchive','table.html#TransactionHistoryArchive'))
DomainSection_64.iconSrc = ICONPATH + 'Gif/table.png'
DomainSection_64.iconSrcClosed = ICONPATH +'Gif/table.png'
DomainSection_65 = insFld(DD_1A, gFld('UnitMeasure','table.html#UnitMeasure'))
DomainSection_65.iconSrc = ICONPATH + 'Gif/table.png'
DomainSection_65.iconSrcClosed = ICONPATH +'Gif/table.png'
DomainSection_66 = insFld(DD_1A, gFld('Vendor','table.html#Vendor'))
DomainSection_66.iconSrc = ICONPATH + 'Gif/table.png'
DomainSection_66.iconSrcClosed = ICONPATH +'Gif/table.png'
DomainSection_67 = insFld(DD_1A, gFld('VendorAddress','table.html#VendorAddress'))
DomainSection_67.iconSrc = ICONPATH + 'Gif/table.png'
DomainSection_67.iconSrcClosed = ICONPATH +'Gif/table.png'
DomainSection_68 = insFld(DD_1A, gFld('VendorContact','table.html#VendorContact'))
DomainSection_68.iconSrc = ICONPATH + 'Gif/table.png'
DomainSection_68.iconSrcClosed = ICONPATH +'Gif/table.png'
DomainSection_69 = insFld(DD_1A, gFld('WorkOrder','table.html#WorkOrder'))
DomainSection_69.iconSrc = ICONPATH + 'Gif/table.png'
DomainSection_69.iconSrcClosed = ICONPATH +'Gif/table.png'
DomainSection_70 = insFld(DD_1A, gFld('WorkOrderRouting','table.html#WorkOrderRouting'))
DomainSection_70.iconSrc = ICONPATH + 'Gif/table.png'
DomainSection_70.iconSrcClosed = ICONPATH +'Gif/table.png'
DD_1B  = insFld(DD_1, gFld('Views','view.html'))
DD_1B.iconSrc = ICONPATH + 'Gif/bluefldr.gif'
DD_1B.iconSrcClosed = ICONPATH +'Gif/blueclsd.gif'
DomainSection_1 = insFld(DD_1B, gFld('vAdditionalContactInfo','view.html#vAdditionalContactInfo'))
DomainSection_1.iconSrc = ICONPATH + 'Gif/view.png'
DomainSection_1.iconSrcClosed = ICONPATH +'Gif/view.png'
DomainSection_2 = insFld(DD_1B, gFld('vEmployee','view.html#vEmployee'))
DomainSection_2.iconSrc = ICONPATH + 'Gif/view.png'
DomainSection_2.iconSrcClosed = ICONPATH +'Gif/view.png'
DomainSection_3 = insFld(DD_1B, gFld('vEmployeeDepartment','view.html#vEmployeeDepartment'))
DomainSection_3.iconSrc = ICONPATH + 'Gif/view.png'
DomainSection_3.iconSrcClosed = ICONPATH +'Gif/view.png'
DomainSection_4 = insFld(DD_1B, gFld('vEmployeeDepartmentHistory','view.html#vEmployeeDepartmentHistory'))
DomainSection_4.iconSrc = ICONPATH + 'Gif/view.png'
DomainSection_4.iconSrcClosed = ICONPATH +'Gif/view.png'
DomainSection_5 = insFld(DD_1B, gFld('vIndividualCustomer','view.html#vIndividualCustomer'))
DomainSection_5.iconSrc = ICONPATH + 'Gif/view.png'
DomainSection_5.iconSrcClosed = ICONPATH +'Gif/view.png'
DomainSection_6 = insFld(DD_1B, gFld('vIndividualDemographics','view.html#vIndividualDemographics'))
DomainSection_6.iconSrc = ICONPATH + 'Gif/view.png'
DomainSection_6.iconSrcClosed = ICONPATH +'Gif/view.png'
DomainSection_7 = insFld(DD_1B, gFld('vJobCandidate','view.html#vJobCandidate'))
DomainSection_7.iconSrc = ICONPATH + 'Gif/view.png'
DomainSection_7.iconSrcClosed = ICONPATH +'Gif/view.png'
DomainSection_8 = insFld(DD_1B, gFld('vJobCandidateEducation','view.html#vJobCandidateEducation'))
DomainSection_8.iconSrc = ICONPATH + 'Gif/view.png'
DomainSection_8.iconSrcClosed = ICONPATH +'Gif/view.png'
DomainSection_9 = insFld(DD_1B, gFld('vJobCandidateEmployment','view.html#vJobCandidateEmployment'))
DomainSection_9.iconSrc = ICONPATH + 'Gif/view.png'
DomainSection_9.iconSrcClosed = ICONPATH +'Gif/view.png'
DomainSection_10 = insFld(DD_1B, gFld('vProductAndDescription','view.html#vProductAndDescription'))
DomainSection_10.iconSrc = ICONPATH + 'Gif/view.png'
DomainSection_10.iconSrcClosed = ICONPATH +'Gif/view.png'
DomainSection_11 = insFld(DD_1B, gFld('vProductModelCatalogDescription','view.html#vProductModelCatalogDescription'))
DomainSection_11.iconSrc = ICONPATH + 'Gif/view.png'
DomainSection_11.iconSrcClosed = ICONPATH +'Gif/view.png'
DomainSection_12 = insFld(DD_1B, gFld('vProductModelInstructions','view.html#vProductModelInstructions'))
DomainSection_12.iconSrc = ICONPATH + 'Gif/view.png'
DomainSection_12.iconSrcClosed = ICONPATH +'Gif/view.png'
DomainSection_13 = insFld(DD_1B, gFld('vSalesPerson','view.html#vSalesPerson'))
DomainSection_13.iconSrc = ICONPATH + 'Gif/view.png'
DomainSection_13.iconSrcClosed = ICONPATH +'Gif/view.png'
DomainSection_14 = insFld(DD_1B, gFld('vSalesPersonSalesByFiscalYears','view.html#vSalesPersonSalesByFiscalYears'))
DomainSection_14.iconSrc = ICONPATH + 'Gif/view.png'
DomainSection_14.iconSrcClosed = ICONPATH +'Gif/view.png'
DomainSection_15 = insFld(DD_1B, gFld('vStateProvinceCountryRegion','view.html#vStateProvinceCountryRegion'))
DomainSection_15.iconSrc = ICONPATH + 'Gif/view.png'
DomainSection_15.iconSrcClosed = ICONPATH +'Gif/view.png'
DomainSection_16 = insFld(DD_1B, gFld('vStoreWithDemographics','view.html#vStoreWithDemographics'))
DomainSection_16.iconSrc = ICONPATH + 'Gif/view.png'
DomainSection_16.iconSrcClosed = ICONPATH +'Gif/view.png'
DomainSection_17 = insFld(DD_1B, gFld('vVendor','view.html#vVendor'))
DomainSection_17.iconSrc = ICONPATH + 'Gif/view.png'
DomainSection_17.iconSrcClosed = ICONPATH +'Gif/view.png'
DD_1C  = insFld(DD_1, gFld('Procedures','procedure.html'))
DD_1C.iconSrc = ICONPATH + 'Gif/bluefldr.gif'
DD_1C.iconSrcClosed = ICONPATH +'Gif/blueclsd.gif'
DomainSection_1 = insFld(DD_1C, gFld('CleanupUnusedAssemblies','procedure.html#CleanupUnusedAssemblies'))
DomainSection_1.iconSrc = ICONPATH + 'Gif/logical.gif'
DomainSection_1.iconSrcClosed = ICONPATH +'Gif/logical.gif'
DomainSection_2 = insFld(DD_1C, gFld('GetPhotoFromDB','procedure.html#GetPhotoFromDB'))
DomainSection_2.iconSrc = ICONPATH + 'Gif/logical.gif'
DomainSection_2.iconSrcClosed = ICONPATH +'Gif/logical.gif'
DomainSection_3 = insFld(DD_1C, gFld('PutPhotoIntoDB','procedure.html#PutPhotoIntoDB'))
DomainSection_3.iconSrc = ICONPATH + 'Gif/logical.gif'
DomainSection_3.iconSrcClosed = ICONPATH +'Gif/logical.gif'
DomainSection_4 = insFld(DD_1C, gFld('uspGetBillOfMaterials','procedure.html#uspGetBillOfMaterials'))
DomainSection_4.iconSrc = ICONPATH + 'Gif/logical.gif'
DomainSection_4.iconSrcClosed = ICONPATH +'Gif/logical.gif'
DomainSection_5 = insFld(DD_1C, gFld('uspGetEmployeeManagers','procedure.html#uspGetEmployeeManagers'))
DomainSection_5.iconSrc = ICONPATH + 'Gif/logical.gif'
DomainSection_5.iconSrcClosed = ICONPATH +'Gif/logical.gif'
DomainSection_6 = insFld(DD_1C, gFld('uspGetManagerEmployees','procedure.html#uspGetManagerEmployees'))
DomainSection_6.iconSrc = ICONPATH + 'Gif/logical.gif'
DomainSection_6.iconSrcClosed = ICONPATH +'Gif/logical.gif'
DomainSection_7 = insFld(DD_1C, gFld('uspGetWhereUsedProductID','procedure.html#uspGetWhereUsedProductID'))
DomainSection_7.iconSrc = ICONPATH + 'Gif/logical.gif'
DomainSection_7.iconSrcClosed = ICONPATH +'Gif/logical.gif'
DomainSection_8 = insFld(DD_1C, gFld('uspLogError','procedure.html#uspLogError'))
DomainSection_8.iconSrc = ICONPATH + 'Gif/logical.gif'
DomainSection_8.iconSrcClosed = ICONPATH +'Gif/logical.gif'
DomainSection_9 = insFld(DD_1C, gFld('uspPrintError','procedure.html#uspPrintError'))
DomainSection_9.iconSrc = ICONPATH + 'Gif/logical.gif'
DomainSection_9.iconSrcClosed = ICONPATH +'Gif/logical.gif'
DomainSection_10 = insFld(DD_1C, gFld('uspUpdateEmployeeHireInfo','procedure.html#uspUpdateEmployeeHireInfo'))
DomainSection_10.iconSrc = ICONPATH + 'Gif/logical.gif'
DomainSection_10.iconSrcClosed = ICONPATH +'Gif/logical.gif'
DomainSection_11 = insFld(DD_1C, gFld('uspUpdateEmployeeLogin','procedure.html#uspUpdateEmployeeLogin'))
DomainSection_11.iconSrc = ICONPATH + 'Gif/logical.gif'
DomainSection_11.iconSrcClosed = ICONPATH +'Gif/logical.gif'
DomainSection_12 = insFld(DD_1C, gFld('uspUpdateEmployeePersonalInfo','procedure.html#uspUpdateEmployeePersonalInfo'))
DomainSection_12.iconSrc = ICONPATH + 'Gif/logical.gif'
DomainSection_12.iconSrcClosed = ICONPATH +'Gif/logical.gif'
DomainSection_13 = insFld(DD_1C, gFld('usp_CreateContact','procedure.html#usp_CreateContact'))
DomainSection_13.iconSrc = ICONPATH + 'Gif/logical.gif'
DomainSection_13.iconSrcClosed = ICONPATH +'Gif/logical.gif'
DomainSection_14 = insFld(DD_1C, gFld('usp_EnsureContactTypeNames','procedure.html#usp_EnsureContactTypeNames'))
DomainSection_14.iconSrc = ICONPATH + 'Gif/logical.gif'
DomainSection_14.iconSrcClosed = ICONPATH +'Gif/logical.gif'
DomainSection_15 = insFld(DD_1C, gFld('usp_LookupConversionRate','procedure.html#usp_LookupConversionRate'))
DomainSection_15.iconSrc = ICONPATH + 'Gif/logical.gif'
DomainSection_15.iconSrcClosed = ICONPATH +'Gif/logical.gif'
DomainSection_16 = insFld(DD_1C, gFld('usp_UpdateImage','procedure.html#usp_UpdateImage'))
DomainSection_16.iconSrc = ICONPATH + 'Gif/logical.gif'
DomainSection_16.iconSrcClosed = ICONPATH +'Gif/logical.gif'
DD_1D  = insFld(DD_1, gFld('Functions','function.html'))
DD_1D.iconSrc = ICONPATH + 'Gif/bluefldr.gif'
DD_1D.iconSrcClosed = ICONPATH +'Gif/blueclsd.gif'
DomainSection_1 = insFld(DD_1D, gFld('ConvertCurrency','function.html#ConvertCurrency'))
DomainSection_1.iconSrc = ICONPATH + 'Gif/func.gif'
DomainSection_1.iconSrcClosed = ICONPATH +'Gif/func.gif'
DomainSection_2 = insFld(DD_1D, gFld('GetContactTypeNames','function.html#GetContactTypeNames'))
DomainSection_2.iconSrc = ICONPATH + 'Gif/func.gif'
DomainSection_2.iconSrcClosed = ICONPATH +'Gif/func.gif'
DomainSection_3 = insFld(DD_1D, gFld('ufnGetAccountingEndDate','function.html#ufnGetAccountingEndDate'))
DomainSection_3.iconSrc = ICONPATH + 'Gif/func.gif'
DomainSection_3.iconSrcClosed = ICONPATH +'Gif/func.gif'
DomainSection_4 = insFld(DD_1D, gFld('ufnGetAccountingStartDate','function.html#ufnGetAccountingStartDate'))
DomainSection_4.iconSrc = ICONPATH + 'Gif/func.gif'
DomainSection_4.iconSrcClosed = ICONPATH +'Gif/func.gif'
DomainSection_5 = insFld(DD_1D, gFld('ufnGetContactInformation','function.html#ufnGetContactInformation'))
DomainSection_5.iconSrc = ICONPATH + 'Gif/func.gif'
DomainSection_5.iconSrcClosed = ICONPATH +'Gif/func.gif'
DomainSection_6 = insFld(DD_1D, gFld('ufnGetDocumentStatusText','function.html#ufnGetDocumentStatusText'))
DomainSection_6.iconSrc = ICONPATH + 'Gif/func.gif'
DomainSection_6.iconSrcClosed = ICONPATH +'Gif/func.gif'
DomainSection_7 = insFld(DD_1D, gFld('ufnGetProductDealerPrice','function.html#ufnGetProductDealerPrice'))
DomainSection_7.iconSrc = ICONPATH + 'Gif/func.gif'
DomainSection_7.iconSrcClosed = ICONPATH +'Gif/func.gif'
DomainSection_8 = insFld(DD_1D, gFld('ufnGetProductListPrice','function.html#ufnGetProductListPrice'))
DomainSection_8.iconSrc = ICONPATH + 'Gif/func.gif'
DomainSection_8.iconSrcClosed = ICONPATH +'Gif/func.gif'
DomainSection_9 = insFld(DD_1D, gFld('ufnGetProductStandardCost','function.html#ufnGetProductStandardCost'))
DomainSection_9.iconSrc = ICONPATH + 'Gif/func.gif'
DomainSection_9.iconSrcClosed = ICONPATH +'Gif/func.gif'
DomainSection_10 = insFld(DD_1D, gFld('ufnGetPurchaseOrderStatusText','function.html#ufnGetPurchaseOrderStatusText'))
DomainSection_10.iconSrc = ICONPATH + 'Gif/func.gif'
DomainSection_10.iconSrcClosed = ICONPATH +'Gif/func.gif'
DomainSection_11 = insFld(DD_1D, gFld('ufnGetSalesOrderStatusText','function.html#ufnGetSalesOrderStatusText'))
DomainSection_11.iconSrc = ICONPATH + 'Gif/func.gif'
DomainSection_11.iconSrcClosed = ICONPATH +'Gif/func.gif'
DomainSection_12 = insFld(DD_1D, gFld('ufnGetStock','function.html#ufnGetStock'))
DomainSection_12.iconSrc = ICONPATH + 'Gif/func.gif'
DomainSection_12.iconSrcClosed = ICONPATH +'Gif/func.gif'
DomainSection_13 = insFld(DD_1D, gFld('ufnLeadingZeros','function.html#ufnLeadingZeros'))
DomainSection_13.iconSrc = ICONPATH + 'Gif/func.gif'
DomainSection_13.iconSrcClosed = ICONPATH +'Gif/func.gif'
DD_1F  = insFld(DD_1, gFld('Domains','domain.html'))
DD_1F.iconSrc = ICONPATH + 'Gif/bluefldr.gif'
DD_1F.iconSrcClosed = ICONPATH +'Gif/blueclsd.gif'
DomainSection_1 = insFld(DD_1F, gFld('AccountNumber','domain.html#AccountNumber'))
DomainSection_1.iconSrc = ICONPATH + 'Gif/domain.png'
DomainSection_1.iconSrcClosed = ICONPATH +'Gif/domain.png'
DomainSection_2 = insFld(DD_1F, gFld('AdditionalContactInfoSchemaCollection','domain.html#AdditionalContactInfoSchemaCollection'))
DomainSection_2.iconSrc = ICONPATH + 'Gif/domain.png'
DomainSection_2.iconSrcClosed = ICONPATH +'Gif/domain.png'
DomainSection_3 = insFld(DD_1F, gFld('ContactDataSchemaCollection','domain.html#ContactDataSchemaCollection'))
DomainSection_3.iconSrc = ICONPATH + 'Gif/domain.png'
DomainSection_3.iconSrcClosed = ICONPATH +'Gif/domain.png'
DomainSection_4 = insFld(DD_1F, gFld('ContactTypeNames','domain.html#ContactTypeNames'))
DomainSection_4.iconSrc = ICONPATH + 'Gif/domain.png'
DomainSection_4.iconSrcClosed = ICONPATH +'Gif/domain.png'
DomainSection_5 = insFld(DD_1F, gFld('Currency','domain.html#Currency'))
DomainSection_5.iconSrc = ICONPATH + 'Gif/domain.png'
DomainSection_5.iconSrcClosed = ICONPATH +'Gif/domain.png'
DomainSection_6 = insFld(DD_1F, gFld('Flag','domain.html#Flag'))
DomainSection_6.iconSrc = ICONPATH + 'Gif/domain.png'
DomainSection_6.iconSrcClosed = ICONPATH +'Gif/domain.png'
DomainSection_7 = insFld(DD_1F, gFld('HRResumeSchemaCollection','domain.html#HRResumeSchemaCollection'))
DomainSection_7.iconSrc = ICONPATH + 'Gif/domain.png'
DomainSection_7.iconSrcClosed = ICONPATH +'Gif/domain.png'
DomainSection_8 = insFld(DD_1F, gFld('IndividualSurveySchemaCollection','domain.html#IndividualSurveySchemaCollection'))
DomainSection_8.iconSrc = ICONPATH + 'Gif/domain.png'
DomainSection_8.iconSrcClosed = ICONPATH +'Gif/domain.png'
DomainSection_9 = insFld(DD_1F, gFld('ManuInstructionsSchemaCollection','domain.html#ManuInstructionsSchemaCollection'))
DomainSection_9.iconSrc = ICONPATH + 'Gif/domain.png'
DomainSection_9.iconSrcClosed = ICONPATH +'Gif/domain.png'
DomainSection_10 = insFld(DD_1F, gFld('Name','domain.html#Name'))
DomainSection_10.iconSrc = ICONPATH + 'Gif/domain.png'
DomainSection_10.iconSrcClosed = ICONPATH +'Gif/domain.png'
DomainSection_11 = insFld(DD_1F, gFld('NameStyle','domain.html#NameStyle'))
DomainSection_11.iconSrc = ICONPATH + 'Gif/domain.png'
DomainSection_11.iconSrcClosed = ICONPATH +'Gif/domain.png'
DomainSection_12 = insFld(DD_1F, gFld('OrderNumber','domain.html#OrderNumber'))
DomainSection_12.iconSrc = ICONPATH + 'Gif/domain.png'
DomainSection_12.iconSrcClosed = ICONPATH +'Gif/domain.png'
DomainSection_13 = insFld(DD_1F, gFld('Phone','domain.html#Phone'))
DomainSection_13.iconSrc = ICONPATH + 'Gif/domain.png'
DomainSection_13.iconSrcClosed = ICONPATH +'Gif/domain.png'
DomainSection_14 = insFld(DD_1F, gFld('ProductDescriptionSchemaCollection','domain.html#ProductDescriptionSchemaCollection'))
DomainSection_14.iconSrc = ICONPATH + 'Gif/domain.png'
DomainSection_14.iconSrcClosed = ICONPATH +'Gif/domain.png'
DomainSection_15 = insFld(DD_1F, gFld('StoreSurveySchemaCollection','domain.html#StoreSurveySchemaCollection'))
DomainSection_15.iconSrc = ICONPATH + 'Gif/domain.png'
DomainSection_15.iconSrcClosed = ICONPATH +'Gif/domain.png'
DD_1G  = insFld(DD_1, gFld('Rules','rule.html'))
DD_1G.iconSrc = ICONPATH + 'Gif/bluefldr.gif'
DD_1G.iconSrcClosed = ICONPATH +'Gif/blueclsd.gif'
DomainSection_1 = insFld(DD_1G, gFld('TestRule','rule.html#TestRule'))
DomainSection_1.iconSrc = ICONPATH + 'Gif/rule.png'
DomainSection_1.iconSrcClosed = ICONPATH +'Gif/rule.png'
DomainSection_2 = insFld(DD_1G, gFld('TestRule2','rule.html#TestRule2'))
DomainSection_2.iconSrc = ICONPATH + 'Gif/rule.png'
DomainSection_2.iconSrcClosed = ICONPATH +'Gif/rule.png'
DD_1H  = insFld(DD_1, gFld('Defaults','default.html'))
DD_1H.iconSrc = ICONPATH + 'Gif/bluefldr.gif'
DD_1H.iconSrcClosed = ICONPATH +'Gif/blueclsd.gif'
DomainSection_1 = insFld(DD_1H, gFld('defaultest','default.html#defaultest'))
DomainSection_1.iconSrc = ICONPATH + 'Gif/default.png'
DomainSection_1.iconSrcClosed = ICONPATH +'Gif/default.png'
DD_1E  = insFld(DD_1, gFld('Diagrams',''))
DD_1E.iconSrc = ICONPATH + 'Gif/bluefldr.gif'
DD_1E.iconSrcClosed = ICONPATH +'Gif/blueclsd.gif'
DomainSection_2 = insFld(DD_1E, gFld('AdventureWorks','C:/Users/Public/Documents/XCASE/diagrams/AdventureWorks.jpg'))
DomainSection_2.iconSrc = ICONPATH + 'Gif/schema.gif'
DomainSection_2.iconSrcClosed = ICONPATH +'Gif/schema.gif'
DomainSection_2 = insFld(DD_1E, gFld('dbo','C:/Users/Public/Documents/XCASE/diagrams/dbo.jpg'))
DomainSection_2.iconSrc = ICONPATH + 'Gif/schema.gif'
DomainSection_2.iconSrcClosed = ICONPATH +'Gif/schema.gif'
DomainSection_2 = insFld(DD_1E, gFld('HumanResources','C:/Users/Public/Documents/XCASE/diagrams/HumanResources.jpg'))
DomainSection_2.iconSrc = ICONPATH + 'Gif/schema.gif'
DomainSection_2.iconSrcClosed = ICONPATH +'Gif/schema.gif'
DomainSection_2 = insFld(DD_1E, gFld('Person','C:/Users/Public/Documents/XCASE/diagrams/Person.jpg'))
DomainSection_2.iconSrc = ICONPATH + 'Gif/schema.gif'
DomainSection_2.iconSrcClosed = ICONPATH +'Gif/schema.gif'
DomainSection_2 = insFld(DD_1E, gFld('Production','C:/Users/Public/Documents/XCASE/diagrams/Production.jpg'))
DomainSection_2.iconSrc = ICONPATH + 'Gif/schema.gif'
DomainSection_2.iconSrcClosed = ICONPATH +'Gif/schema.gif'
DomainSection_2 = insFld(DD_1E, gFld('Purchasing','C:/Users/Public/Documents/XCASE/diagrams/Purchasing.jpg'))
DomainSection_2.iconSrc = ICONPATH + 'Gif/schema.gif'
DomainSection_2.iconSrcClosed = ICONPATH +'Gif/schema.gif'
DomainSection_2 = insFld(DD_1E, gFld('Sales','C:/Users/Public/Documents/XCASE/diagrams/Sales.jpg'))
DomainSection_2.iconSrc = ICONPATH + 'Gif/schema.gif'
DomainSection_2.iconSrcClosed = ICONPATH +'Gif/schema.gif'
}
}
