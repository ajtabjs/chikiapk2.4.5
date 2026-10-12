.class public interface abstract Lcom/voxelbusters/essentialkit/billingservices/common/interfaces/IRestorePurchasesListener;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract onFailure(Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;)V
.end method

.method public abstract onSuccess(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction;",
            ">;)V"
        }
    .end annotation
.end method
