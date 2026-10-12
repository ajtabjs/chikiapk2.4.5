.class public interface abstract Lcom/voxelbusters/essentialkit/billingservices/common/interfaces/IBillingServices;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract buyProduct(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract canMakePayments()Z
.end method

.method public abstract fetchProductDetails(Lcom/voxelbusters/essentialkit/billingservices/common/interfaces/IFetchBillingProductsListener;)V
.end method

.method public abstract finishBillingTransaction(Ljava/lang/String;Z)V
.end method

.method public abstract getIncompleteBillingTransactions()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction;",
            ">;"
        }
    .end annotation
.end method

.method public abstract initialise(Ljava/lang/String;Lcom/voxelbusters/essentialkit/billingservices/common/interfaces/IBillingTransactionStateListener;)V
.end method

.method public abstract isProductPurchased(Ljava/lang/String;)Z
.end method

.method public abstract restorePurchases(ZLjava/lang/String;Lcom/voxelbusters/essentialkit/billingservices/common/interfaces/IRestorePurchasesListener;)V
.end method

.method public abstract setProducts([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
.end method
