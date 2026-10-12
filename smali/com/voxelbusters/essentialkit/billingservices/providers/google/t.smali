.class public final Lcom/voxelbusters/essentialkit/billingservices/providers/google/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IQueryProductDetailsListener;


# instance fields
.field public final synthetic a:Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IQueryProductDetailsListener;

.field public final synthetic b:Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;


# direct methods
.method public constructor <init>(Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IQueryProductDetailsListener;)V
    .locals 0

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/t;->b:Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;

    iput-object p2, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/t;->a:Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IQueryProductDetailsListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onQueryProductDetailsFailed(Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/t;->a:Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IQueryProductDetailsListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IQueryProductDetailsListener;->onQueryProductDetailsFailed(Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;)V

    :cond_0
    return-void
.end method

.method public final onQueryProductDetailsSuccess(Ljava/util/List;Ljava/util/List;)V
    .locals 2

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/t;->b:Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;

    new-instance v1, Lcom/voxelbusters/essentialkit/billingservices/providers/google/s;

    invoke-direct {v1, p0, p1, p2}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/s;-><init>(Lcom/voxelbusters/essentialkit/billingservices/providers/google/t;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;->queryValidPurchases(Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IQueryPurchasesListener;)V

    return-void
.end method
