.class public interface abstract Lcom/voxelbusters/essentialkit/billingservices/common/interfaces/IFetchBillingProductsListener;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract onFailure(Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;)V
.end method

.method public abstract onSuccess(Ljava/util/List;Lcom/voxelbusters/essentialkit/utilities/common/ArrayBuffer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/voxelbusters/essentialkit/billingservices/common/BillingProduct;",
            ">;",
            "Lcom/voxelbusters/essentialkit/utilities/common/ArrayBuffer<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
