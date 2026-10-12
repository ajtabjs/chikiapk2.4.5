.class public final Lcom/voxelbusters/essentialkit/billingservices/providers/google/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/voxelbusters/essentialkit/billingservices/common/interfaces/IConnectionListener;


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IQueryProductDetailsListener;

.field public final synthetic d:Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;


# direct methods
.method public constructor <init>(Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;Ljava/util/List;Ljava/util/List;Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IQueryProductDetailsListener;)V
    .locals 0

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/c;->d:Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;

    iput-object p2, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/c;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/c;->b:Ljava/util/List;

    iput-object p4, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/c;->c:Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IQueryProductDetailsListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConnect()V
    .locals 4

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/c;->d:Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;

    iget-object v1, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/c;->a:Ljava/util/List;

    new-instance v2, Lcom/voxelbusters/essentialkit/billingservices/providers/google/b;

    invoke-direct {v2, p0}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/b;-><init>(Lcom/voxelbusters/essentialkit/billingservices/providers/google/c;)V

    const-string v3, "inapp"

    invoke-static {v0, v1, v3, v2}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;->access$1100(Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;Ljava/util/List;Ljava/lang/String;Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IQueryProductDetailsInternalListener;)V

    return-void
.end method

.method public final onDisconnected(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/c;->c:Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IQueryProductDetailsListener;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;

    iget-object v2, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/c;->d:Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;

    const/4 v3, -0x1

    invoke-static {v2, v3}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;->access$800(Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;I)Lcom/voxelbusters/essentialkit/billingservices/common/BillingServicesErrorCode;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;-><init>(Ljava/lang/Enum;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IQueryProductDetailsListener;->onQueryProductDetailsFailed(Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;)V

    :cond_0
    return-void
.end method
