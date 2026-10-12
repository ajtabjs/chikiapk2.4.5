.class public final Lcom/voxelbusters/essentialkit/billingservices/providers/google/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/voxelbusters/essentialkit/billingservices/common/interfaces/IConnectionListener;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IQueryPurchasesListener;

.field public final synthetic c:Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;


# direct methods
.method public constructor <init>(Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;Ljava/lang/String;Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IQueryPurchasesListener;)V
    .locals 0

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/f;->c:Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;

    iput-object p2, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/f;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/f;->b:Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IQueryPurchasesListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConnect()V
    .locals 3

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/f;->c:Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;

    invoke-static {v0}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;->access$700(Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;)Lcom/android/billingclient/api/BillingClient;

    move-result-object v0

    invoke-static {}, Lcom/android/billingclient/api/QueryPurchasesParams;->newBuilder()Lcom/android/billingclient/api/QueryPurchasesParams$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/f;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/billingclient/api/QueryPurchasesParams$Builder;->setProductType(Ljava/lang/String;)Lcom/android/billingclient/api/QueryPurchasesParams$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/billingclient/api/QueryPurchasesParams$Builder;->build()Lcom/android/billingclient/api/QueryPurchasesParams;

    move-result-object v1

    new-instance v2, Lcom/voxelbusters/essentialkit/billingservices/providers/google/e;

    invoke-direct {v2, p0}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/e;-><init>(Lcom/voxelbusters/essentialkit/billingservices/providers/google/f;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/billingclient/api/BillingClient;->queryPurchasesAsync(Lcom/android/billingclient/api/QueryPurchasesParams;Lcom/android/billingclient/api/PurchasesResponseListener;)V

    return-void
.end method

.method public final onDisconnected(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/f;->b:Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IQueryPurchasesListener;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;

    iget-object v2, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/f;->c:Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;

    const/4 v3, -0x1

    invoke-static {v2, v3}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;->access$800(Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;I)Lcom/voxelbusters/essentialkit/billingservices/common/BillingServicesErrorCode;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;-><init>(Ljava/lang/Enum;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IQueryPurchasesListener;->onQueryPurchasesFailed(Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;)V

    :cond_0
    return-void
.end method
