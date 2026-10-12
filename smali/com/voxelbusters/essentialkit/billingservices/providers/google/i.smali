.class public final Lcom/voxelbusters/essentialkit/billingservices/providers/google/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IQueryPurchasesListener;


# instance fields
.field public final synthetic a:Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IQueryPurchasesListener;

.field public final synthetic b:Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;


# direct methods
.method public constructor <init>(Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IQueryPurchasesListener;)V
    .locals 0

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/i;->b:Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;

    iput-object p2, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/i;->a:Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IQueryPurchasesListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onQueryPurchasesFailed(Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/i;->a:Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IQueryPurchasesListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IQueryPurchasesListener;->onQueryPurchasesFailed(Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;)V

    :cond_0
    return-void
.end method

.method public final onQueryPurchasesSuccess(Ljava/util/List;)V
    .locals 2

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/i;->b:Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;->access$100(Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;Ljava/util/List;Z)V

    iget-object p1, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/i;->a:Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IQueryPurchasesListener;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/i;->b:Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;

    invoke-static {v0}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;->access$200(Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IQueryPurchasesListener;->onQueryPurchasesSuccess(Ljava/util/List;)V

    :cond_0
    return-void
.end method
