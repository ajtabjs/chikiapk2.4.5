.class public final Lcom/voxelbusters/essentialkit/billingservices/providers/google/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IQueryPurchasesListener;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/voxelbusters/essentialkit/billingservices/common/interfaces/IFetchBillingPurchaseListener;

.field public final synthetic c:Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;


# direct methods
.method public constructor <init>(Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;Ljava/lang/String;Lcom/voxelbusters/essentialkit/billingservices/common/interfaces/IFetchBillingPurchaseListener;)V
    .locals 0

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/q;->c:Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;

    iput-object p2, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/q;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/q;->b:Lcom/voxelbusters/essentialkit/billingservices/common/interfaces/IFetchBillingPurchaseListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onQueryPurchasesFailed(Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/q;->b:Lcom/voxelbusters/essentialkit/billingservices/common/interfaces/IFetchBillingPurchaseListener;

    invoke-interface {v0, p1}, Lcom/voxelbusters/essentialkit/billingservices/common/interfaces/IFetchBillingPurchaseListener;->onFailure(Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;)V

    return-void
.end method

.method public final onQueryPurchasesSuccess(Ljava/util/List;)V
    .locals 3

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/billingclient/api/Purchase;

    invoke-virtual {v0}, Lcom/android/billingclient/api/Purchase;->getProducts()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/q;->a:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/q;->b:Lcom/voxelbusters/essentialkit/billingservices/common/interfaces/IFetchBillingPurchaseListener;

    invoke-interface {p1, v0}, Lcom/voxelbusters/essentialkit/billingservices/common/interfaces/IFetchBillingPurchaseListener;->onSuccess(Lcom/android/billingclient/api/Purchase;)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/q;->b:Lcom/voxelbusters/essentialkit/billingservices/common/interfaces/IFetchBillingPurchaseListener;

    new-instance v0, Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;

    iget-object v1, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/q;->c:Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;

    const/4 v2, 0x6

    invoke-static {v1, v2}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;->access$800(Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;I)Lcom/voxelbusters/essentialkit/billingservices/common/BillingServicesErrorCode;

    move-result-object v1

    const-string v2, "Unable to find purchase. This may be consumed already."

    invoke-direct {v0, v1, v2}, Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;-><init>(Ljava/lang/Enum;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/voxelbusters/essentialkit/billingservices/common/interfaces/IFetchBillingPurchaseListener;->onFailure(Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;)V

    return-void
.end method
