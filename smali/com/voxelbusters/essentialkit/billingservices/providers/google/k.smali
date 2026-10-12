.class public final Lcom/voxelbusters/essentialkit/billingservices/providers/google/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IQueryPurchasesListener;


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IQueryPurchasesListener;

.field public final synthetic c:Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;


# direct methods
.method public constructor <init>(Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;Ljava/util/ArrayList;Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IQueryPurchasesListener;)V
    .locals 0

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/k;->c:Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;

    iput-object p2, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/k;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/k;->b:Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IQueryPurchasesListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onQueryPurchasesFailed(Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/k;->b:Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IQueryPurchasesListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IQueryPurchasesListener;->onQueryPurchasesFailed(Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;)V

    :cond_0
    return-void
.end method

.method public final onQueryPurchasesSuccess(Ljava/util/List;)V
    .locals 2

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/k;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/k;->c:Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;

    new-instance v0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/j;

    invoke-direct {v0, p0}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/j;-><init>(Lcom/voxelbusters/essentialkit/billingservices/providers/google/k;)V

    const-string v1, "subs"

    invoke-static {p1, v1, v0}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;->access$300(Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;Ljava/lang/String;Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IQueryPurchasesListener;)V

    return-void
.end method
