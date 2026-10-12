.class public interface abstract Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IPurchasesStateListener;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract onPurchaseFailed(Ljava/lang/String;Lcom/voxelbusters/essentialkit/billingservices/common/BuyProductOptions;Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;)V
.end method

.method public abstract onPurchaseStarted(Ljava/lang/String;Lcom/voxelbusters/essentialkit/billingservices/common/BuyProductOptions;)V
.end method

.method public abstract onPurchaseUpdated(Lcom/android/billingclient/api/Purchase;Lcom/voxelbusters/essentialkit/billingservices/common/BuyProductOptions;)V
.end method
