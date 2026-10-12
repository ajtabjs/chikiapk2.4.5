.class public interface abstract Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IQueryProductDetailsListener;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract onQueryProductDetailsFailed(Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;)V
.end method

.method public abstract onQueryProductDetailsSuccess(Ljava/util/List;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/ProductDetails;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/ProductDetails;",
            ">;)V"
        }
    .end annotation
.end method
