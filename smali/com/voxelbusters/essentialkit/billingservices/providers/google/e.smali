.class public final Lcom/voxelbusters/essentialkit/billingservices/providers/google/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/billingclient/api/PurchasesResponseListener;


# instance fields
.field public final synthetic a:Lcom/voxelbusters/essentialkit/billingservices/providers/google/f;


# direct methods
.method public constructor <init>(Lcom/voxelbusters/essentialkit/billingservices/providers/google/f;)V
    .locals 0

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/e;->a:Lcom/voxelbusters/essentialkit/billingservices/providers/google/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onQueryPurchasesResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 3

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/e;->a:Lcom/voxelbusters/essentialkit/billingservices/providers/google/f;

    iget-object v0, v0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/f;->b:Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IQueryPurchasesListener;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/voxelbusters/essentialkit/utilities/Logger;->debug(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/e;->a:Lcom/voxelbusters/essentialkit/billingservices/providers/google/f;

    iget-object p1, p1, Lcom/voxelbusters/essentialkit/billingservices/providers/google/f;->b:Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IQueryPurchasesListener;

    invoke-interface {p1, p2}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IQueryPurchasesListener;->onQueryPurchasesSuccess(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/e;->a:Lcom/voxelbusters/essentialkit/billingservices/providers/google/f;

    iget-object p2, p2, Lcom/voxelbusters/essentialkit/billingservices/providers/google/f;->b:Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IQueryPurchasesListener;

    new-instance v0, Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;

    iget-object v1, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/e;->a:Lcom/voxelbusters/essentialkit/billingservices/providers/google/f;

    iget-object v1, v1, Lcom/voxelbusters/essentialkit/billingservices/providers/google/f;->c:Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v2

    invoke-static {v1, v2}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;->access$800(Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;I)Lcom/voxelbusters/essentialkit/billingservices/common/BillingServicesErrorCode;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;-><init>(Ljava/lang/Enum;Ljava/lang/String;)V

    invoke-interface {p2, v0}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IQueryPurchasesListener;->onQueryPurchasesFailed(Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;)V

    :cond_1
    :goto_0
    return-void
.end method
