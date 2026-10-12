.class public final Lcom/voxelbusters/essentialkit/billingservices/providers/google/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IQueryProductDetailsInternalListener;


# instance fields
.field public final synthetic a:Lcom/voxelbusters/essentialkit/billingservices/providers/google/c;


# direct methods
.method public constructor <init>(Lcom/voxelbusters/essentialkit/billingservices/providers/google/c;)V
    .locals 0

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/b;->a:Lcom/voxelbusters/essentialkit/billingservices/providers/google/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onQueryProductDetailsInternalFailed(Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/b;->a:Lcom/voxelbusters/essentialkit/billingservices/providers/google/c;

    iget-object v0, v0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/c;->c:Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IQueryProductDetailsListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IQueryProductDetailsListener;->onQueryProductDetailsFailed(Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;)V

    :cond_0
    return-void
.end method

.method public final onQueryProductDetailsInternalSuccess(Ljava/util/List;)V
    .locals 3

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/b;->a:Lcom/voxelbusters/essentialkit/billingservices/providers/google/c;

    iget-object v0, v0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/c;->d:Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;->access$1000(Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;Ljava/util/List;Z)V

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/b;->a:Lcom/voxelbusters/essentialkit/billingservices/providers/google/c;

    iget-object v1, v0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/c;->d:Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;

    iget-object v0, v0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/c;->b:Ljava/util/List;

    new-instance v2, Lcom/voxelbusters/essentialkit/billingservices/providers/google/a;

    invoke-direct {v2, p0, p1}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/a;-><init>(Lcom/voxelbusters/essentialkit/billingservices/providers/google/b;Ljava/util/List;)V

    const-string p1, "subs"

    invoke-static {v1, v0, p1, v2}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;->access$1100(Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;Ljava/util/List;Ljava/lang/String;Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IQueryProductDetailsInternalListener;)V

    return-void
.end method
