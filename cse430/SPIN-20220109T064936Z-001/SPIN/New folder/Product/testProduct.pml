mtype = { enterProductPage, checkUserAuth, authenticate, loadProductPage, selectProduct, displayProductInfo, buyProduct,reqAddPatment,payment, paymentSuccess,savePurchaseInfo,saveSuccess, deliveryProcess };
chan to_user = [3] of { mtype };
chan to_product = [5] of { mtype };
chan to_database = [3] of { mtype };
active proctype User()
{
again: to_product!enterProductPage;
	to_user?loadProductPage;
	to_product!selectProduct;
	to_user?displayProductInfo;
	to_product!buyProduct;
	to_user?reqAddPatment;
	to_product!payment;
	to_user?paymentSuccess;
	to_user?deliveryProcess;
 	goto again
}
active proctype Product()
{
again: to_product?enterProductPage;
 	to_database!checkUserAuth;
	to_product?authenticate;
	to_user!loadProductPage;
	to_product?selectProduct;
	to_user!displayProductInfo;
	to_product?buyProduct;
	to_user!reqAddPatment;
	to_product?payment;
	to_user!paymentSuccess;
	to_database!savePurchaseInfo;
	to_product?saveSuccess;
	to_user!deliveryProcess;
 	goto again
}
active proctype Database()
{
again: to_database?checkUserAuth;
 	to_product!authenticate;
	to_database?savePurchaseInfo;
	to_product!saveSuccess;
 	goto again
}
