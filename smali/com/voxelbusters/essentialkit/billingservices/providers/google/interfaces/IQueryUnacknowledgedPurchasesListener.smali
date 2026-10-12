.class public interface abstract Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IQueryUnacknowledgedPurchasesListener;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract onQueryUnacknowledgedPurchasesFailed(Ljava/lang/String;)V
.end method

.method public abstract onQueryUnacknowledgedPurchasesSuccess(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;)V"
        }
    .end annotation
.end method
