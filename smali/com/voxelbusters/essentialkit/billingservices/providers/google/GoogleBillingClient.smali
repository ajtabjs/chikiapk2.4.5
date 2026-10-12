.class public Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/billingclient/api/PurchasesUpdatedListener;


# instance fields
.field private allProductDetails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/ProductDetails;",
            ">;"
        }
    .end annotation
.end field

.field private billingClient:Lcom/android/billingclient/api/BillingClient;

.field private cachedValidPurchases:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;"
        }
    .end annotation
.end field

.field private connectionListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/voxelbusters/essentialkit/billingservices/common/interfaces/IConnectionListener;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private currentPurchaseOptions:Lcom/voxelbusters/essentialkit/billingservices/common/BuyProductOptions;

.field private currentPurchaseProductId:Ljava/lang/String;

.field private isServiceConnected:Z

.field private isServiceConnecting:Z

.field private purchasesStateListener:Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IPurchasesStateListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IPurchasesStateListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;->isServiceConnected:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;->allProductDetails:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;->connectionListeners:Ljava/util/List;

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;->purchasesStateListener:Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IPurchasesStateListener;

    invoke-static {p1}, Lcom/android/billingclient/api/BillingClient;->newBuilder(Landroid/content/Context;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object p1

    invoke-static {}, Lcom/android/billingclient/api/PendingPurchasesParams;->newBuilder()Lcom/android/billingclient/api/PendingPurchasesParams$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/billingclient/api/PendingPurchasesParams$Builder;->enableOneTimeProducts()Lcom/android/billingclient/api/PendingPurchasesParams$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/billingclient/api/PendingPurchasesParams$Builder;->enablePrepaidPlans()Lcom/android/billingclient/api/PendingPurchasesParams$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/billingclient/api/PendingPurchasesParams$Builder;->build()Lcom/android/billingclient/api/PendingPurchasesParams;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/billingclient/api/BillingClient$Builder;->enablePendingPurchases(Lcom/android/billingclient/api/PendingPurchasesParams;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/billingclient/api/BillingClient$Builder;->setListener(Lcom/android/billingclient/api/PurchasesUpdatedListener;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingClient$Builder;->build()Lcom/android/billingclient/api/BillingClient;

    move-result-object p1

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;->billingClient:Lcom/android/billingclient/api/BillingClient;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;->cachedValidPurchases:Ljava/util/List;

    new-instance p1, Lcom/voxelbusters/essentialkit/billingservices/providers/google/h;

    invoke-direct {p1, p0}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/h;-><init>(Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;)V

    invoke-direct {p0, p1}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;->connect(Lcom/voxelbusters/essentialkit/billingservices/common/interfaces/IConnectionListener;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;)V
    .locals 0

    invoke-direct {p0}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;->refreshPurchases()V

    return-void
.end method

.method public static synthetic access$100(Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;Ljava/util/List;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;->setCachedValidPurchases(Ljava/util/List;Z)V

    return-void
.end method

.method public static synthetic access$1000(Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;Ljava/util/List;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;->cacheProductDetails(Ljava/util/List;Z)V

    return-void
.end method

.method public static synthetic access$1100(Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;Ljava/util/List;Ljava/lang/String;Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IQueryProductDetailsInternalListener;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;->queryProductDetailsInternal(Ljava/util/List;Ljava/lang/String;Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IQueryProductDetailsInternalListener;)V

    return-void
.end method

.method public static synthetic access$1202(Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;->isServiceConnecting:Z

    return p1
.end method

.method public static synthetic access$1302(Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;->isServiceConnected:Z

    return p1
.end method

.method public static synthetic access$1400(Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;)V
    .locals 0

    invoke-direct {p0}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;->updateListenersOnSuccess()V

    return-void
.end method

.method public static synthetic access$1500(Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;->updateListenersOnDisconnection(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$200(Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;->cachedValidPurchases:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;Ljava/lang/String;Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IQueryPurchasesListener;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;->queryPurchases(Ljava/lang/String;Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IQueryPurchasesListener;)V

    return-void
.end method

.method public static synthetic access$400(Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;)V
    .locals 0

    invoke-direct {p0}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;->clearCurrentProcessingProduct()V

    return-void
.end method

.method public static synthetic access$500(Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;Ljava/lang/String;)Lcom/android/billingclient/api/ProductDetails;
    .locals 0

    invoke-direct {p0, p1}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;->getProductDetails(Ljava/lang/String;)Lcom/android/billingclient/api/ProductDetails;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$600(Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;)Lcom/android/billingclient/api/BillingClient;
    .locals 0

    iget-object p0, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;->billingClient:Lcom/android/billingclient/api/BillingClient;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;I)Lcom/voxelbusters/essentialkit/billingservices/common/BillingServicesErrorCode;
    .locals 0

    invoke-direct {p0, p1}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;->getBillingServicesErrorCode(I)Lcom/voxelbusters/essentialkit/billingservices/common/BillingServicesErrorCode;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$900(Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;)Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IPurchasesStateListener;
    .locals 0

    iget-object p0, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;->purchasesStateListener:Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IPurchasesStateListener;

    return-object p0
.end method

.method private addToCachedValidPurchasesIfRequired(Lcom/android/billingclient/api/Purchase;)V
    .locals 3

    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getPurchaseState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;->cachedValidPurchases:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/billingclient/api/Purchase;

    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getOrderId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/android/billingclient/api/Purchase;->getOrderId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getOrderId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_2
    iget-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;->cachedValidPurchases:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private cacheProductDetails(Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/ProductDetails;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;->allProductDetails:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/billingclient/api/ProductDetails;

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;->allProductDetails:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private clearCurrentProcessingProduct()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;->currentPurchaseProductId:Ljava/lang/String;

    iput-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;->currentPurchaseOptions:Lcom/voxelbusters/essentialkit/billingservices/common/BuyProductOptions;

    return-void
.end method

.method private connect(Lcom/voxelbusters/essentialkit/billingservices/common/interfaces/IConnectionListener;)V
    .locals 2

    iget-boolean v0, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;->isServiceConnected:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/voxelbusters/essentialkit/billingservices/common/interfaces/IConnectionListener;->onConnect()V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;->connectionListeners:Ljava/util/List;

    monitor-enter v0

    if-eqz p1, :cond_2

    :try_start_0
    iget-object v1, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;->connectionListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean p1, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;->isServiceConnecting:Z

    if-eqz p1, :cond_3

    return-void

    :cond_3
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;->isServiceConnecting:Z

    iget-object p1, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;->billingClient:Lcom/android/billingclient/api/BillingClient;

    new-instance v0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/g;

    invoke-direct {v0, p0}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/g;-><init>(Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;)V

    invoke-virtual {p1, v0}, Lcom/android/billingclient/api/BillingClient;->startConnection(Lcom/android/billingclient/api/BillingClientStateListener;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private executeRequestOnConnect(Lcom/voxelbusters/essentialkit/billingservices/common/interfaces/IConnectionListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;->connect(Lcom/voxelbusters/essentialkit/billingservices/common/interfaces/IConnectionListener;)V

    return-void
.end method

.method private getBillingServicesErrorCode(I)Lcom/voxelbusters/essentialkit/billingservices/common/BillingServicesErrorCode;
    .locals 1

    const/4 v0, -0x2

    if-eq p1, v0, :cond_6

    const/4 v0, -0x1

    if-eq p1, v0, :cond_5

    const/4 v0, 0x7

    if-eq p1, v0, :cond_4

    const/16 v0, 0xc

    if-eq p1, v0, :cond_5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_2

    sget-object p1, Lcom/voxelbusters/essentialkit/billingservices/common/BillingServicesErrorCode;->Unknown:Lcom/voxelbusters/essentialkit/billingservices/common/BillingServicesErrorCode;

    return-object p1

    :cond_0
    sget-object p1, Lcom/voxelbusters/essentialkit/billingservices/common/BillingServicesErrorCode;->ProductNotAvailable:Lcom/voxelbusters/essentialkit/billingservices/common/BillingServicesErrorCode;

    return-object p1

    :cond_1
    sget-object p1, Lcom/voxelbusters/essentialkit/billingservices/common/BillingServicesErrorCode;->BillingNotAvailable:Lcom/voxelbusters/essentialkit/billingservices/common/BillingServicesErrorCode;

    return-object p1

    :cond_2
    sget-object p1, Lcom/voxelbusters/essentialkit/billingservices/common/BillingServicesErrorCode;->SystemError:Lcom/voxelbusters/essentialkit/billingservices/common/BillingServicesErrorCode;

    return-object p1

    :cond_3
    sget-object p1, Lcom/voxelbusters/essentialkit/billingservices/common/BillingServicesErrorCode;->UserCancelled:Lcom/voxelbusters/essentialkit/billingservices/common/BillingServicesErrorCode;

    return-object p1

    :cond_4
    sget-object p1, Lcom/voxelbusters/essentialkit/billingservices/common/BillingServicesErrorCode;->ProductOwned:Lcom/voxelbusters/essentialkit/billingservices/common/BillingServicesErrorCode;

    return-object p1

    :cond_5
    sget-object p1, Lcom/voxelbusters/essentialkit/billingservices/common/BillingServicesErrorCode;->NetworkError:Lcom/voxelbusters/essentialkit/billingservices/common/BillingServicesErrorCode;

    return-object p1

    :cond_6
    sget-object p1, Lcom/voxelbusters/essentialkit/billingservices/common/BillingServicesErrorCode;->FeatureNotAvailable:Lcom/voxelbusters/essentialkit/billingservices/common/BillingServicesErrorCode;

    return-object p1
.end method

.method private getProductDetails(Ljava/lang/String;)Lcom/android/billingclient/api/ProductDetails;
    .locals 3

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;->allProductDetails:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/billingclient/api/ProductDetails;

    invoke-virtual {v1}, Lcom/android/billingclient/api/ProductDetails;->getProductId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private getQueryProductsList(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/QueryProductDetailsParams$Product;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product;->newBuilder()Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->setProductId(Ljava/lang/String;)Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    invoke-virtual {v2, p2}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->setProductType(Ljava/lang/String;)Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;

    invoke-virtual {v2}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product$Builder;->build()Lcom/android/billingclient/api/QueryProductDetailsParams$Product;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private getResponseCodeDescription(I)Ljava/lang/String;
    .locals 1

    const/4 v0, -0x2

    if-eq p1, v0, :cond_2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    const/16 v0, 0xc

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    const-string p1, "Cause of the error is unknown."

    return-object p1

    :pswitch_0
    const-string p1, "Requested action on the item failed since it is not owned by the user."

    return-object p1

    :pswitch_1
    const-string p1, "The purchase failed because the item is already owned."

    return-object p1

    :pswitch_2
    const-string p1, "Fatal error during the API action."

    return-object p1

    :pswitch_3
    const-string p1, "Error resulting from incorrect usage of the API."

    return-object p1

    :pswitch_4
    const-string p1, "ITEM_UNAVAILABLE"

    return-object p1

    :pswitch_5
    const-string p1, "A user billing error occurred during processing."

    return-object p1

    :pswitch_6
    const-string p1, "The service is currently unavailable."

    return-object p1

    :pswitch_7
    const-string p1, "Transaction was canceled by the user."

    return-object p1

    :cond_0
    const-string p1, "A network error occurred during the operation.\n\nThis error indicates that there was a problem with the network connection between the device and Play systems. This could potentially also be due to the user not having an active network connection."

    return-object p1

    :cond_1
    const-string p1, "The app is not connected to the Play Store service."

    return-object p1

    :cond_2
    const-string p1, "The requested feature is not supported by the Play Store on the current device."

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private queryAllPurchasesInternal(Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IQueryPurchasesListener;)V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/voxelbusters/essentialkit/billingservices/providers/google/k;

    invoke-direct {v1, p0, v0, p1}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/k;-><init>(Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;Ljava/util/ArrayList;Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IQueryPurchasesListener;)V

    const-string p1, "inapp"

    invoke-direct {p0, p1, v1}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;->queryPurchases(Ljava/lang/String;Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IQueryPurchasesListener;)V

    return-void
.end method

.method private queryProductDetails(Ljava/util/List;Ljava/util/List;Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IQueryProductDetailsListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IQueryProductDetailsListener;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/c;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/c;-><init>(Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;Ljava/util/List;Ljava/util/List;Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IQueryProductDetailsListener;)V

    invoke-direct {p0, v0}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;->executeRequestOnConnect(Lcom/voxelbusters/essentialkit/billingservices/common/interfaces/IConnectionListener;)V

    return-void
.end method

.method private queryProductDetailsInternal(Ljava/util/List;Ljava/lang/String;Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IQueryProductDetailsInternalListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IQueryProductDetailsInternalListener;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;->getQueryProductsList(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_1

    if-eqz p3, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p3, p1}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IQueryProductDetailsInternalListener;->onQueryProductDetailsInternalSuccess(Ljava/util/List;)V

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/billingclient/api/QueryProductDetailsParams;->newBuilder()Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;->setProductList(Ljava/util/List;)Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;

    iget-object p1, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;->billingClient:Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {p2}, Lcom/android/billingclient/api/QueryProductDetailsParams$Builder;->build()Lcom/android/billingclient/api/QueryProductDetailsParams;

    move-result-object p2

    new-instance v0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/d;

    invoke-direct {v0, p0, p3}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/d;-><init>(Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IQueryProductDetailsInternalListener;)V

    invoke-virtual {p1, p2, v0}, Lcom/android/billingclient/api/BillingClient;->queryProductDetailsAsync(Lcom/android/billingclient/api/QueryProductDetailsParams;Lcom/android/billingclient/api/ProductDetailsResponseListener;)V

    return-void
.end method

.method private queryPurchases(Ljava/lang/String;Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IQueryPurchasesListener;)V
    .locals 1

    new-instance v0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/f;

    invoke-direct {v0, p0, p1, p2}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/f;-><init>(Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;Ljava/lang/String;Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IQueryPurchasesListener;)V

    invoke-direct {p0, v0}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;->executeRequestOnConnect(Lcom/voxelbusters/essentialkit/billingservices/common/interfaces/IConnectionListener;)V

    return-void
.end method

.method private refreshPurchases()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;->queryValidPurchases(Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IQueryPurchasesListener;)V

    return-void
.end method

.method private setCachedValidPurchases(Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;->cachedValidPurchases:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/billingclient/api/Purchase;

    invoke-direct {p0, p2}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;->addToCachedValidPurchasesIfRequired(Lcom/android/billingclient/api/Purchase;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setCurrentProcessingProduct(Ljava/lang/String;Lcom/voxelbusters/essentialkit/billingservices/common/BuyProductOptions;)V
    .locals 0

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;->currentPurchaseProductId:Ljava/lang/String;

    iput-object p2, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;->currentPurchaseOptions:Lcom/voxelbusters/essentialkit/billingservices/common/BuyProductOptions;

    return-void
.end method

.method private startProductPurchase(Ljava/lang/String;Ljava/lang/String;Lcom/voxelbusters/essentialkit/billingservices/common/BuyProductOptions;Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IStartProductPurchaseListener;)V
    .locals 7

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;->currentPurchaseProductId:Ljava/lang/String;

    invoke-static {v0}, Lcom/voxelbusters/essentialkit/utilities/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p2, Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;

    sget-object p3, Lcom/voxelbusters/essentialkit/billingservices/common/BillingServicesErrorCode;->StoreIsBusy:Lcom/voxelbusters/essentialkit/billingservices/common/BillingServicesErrorCode;

    const-string v0, "Cannot make a purchase as currently another purchase is under proces"

    invoke-direct {p2, p3, v0}, Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;-><init>(Ljava/lang/Enum;Ljava/lang/String;)V

    invoke-interface {p4, p1, p2}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IStartProductPurchaseListener;->onStartProductPurchaseFailed(Ljava/lang/String;Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;)V

    return-void

    :cond_0
    invoke-direct {p0, p1, p3}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;->setCurrentProcessingProduct(Ljava/lang/String;Lcom/voxelbusters/essentialkit/billingservices/common/BuyProductOptions;)V

    new-instance v0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/l;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p3

    move-object v4, p4

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/l;-><init>(Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;Lcom/voxelbusters/essentialkit/billingservices/common/BuyProductOptions;Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IStartProductPurchaseListener;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;->executeRequestOnConnect(Lcom/voxelbusters/essentialkit/billingservices/common/interfaces/IConnectionListener;)V

    return-void
.end method

.method private updateListenersOnDisconnection(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;->connectionListeners:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;->connectionListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/voxelbusters/essentialkit/billingservices/common/interfaces/IConnectionListener;

    invoke-interface {v2, p1}, Lcom/voxelbusters/essentialkit/billingservices/common/interfaces/IConnectionListener;->onDisconnected(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;->connectionListeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private updateListenersOnSuccess()V
    .locals 3

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;->connectionListeners:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;->connectionListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/voxelbusters/essentialkit/billingservices/common/interfaces/IConnectionListener;

    invoke-interface {v2}, Lcom/voxelbusters/essentialkit/billingservices/common/interfaces/IConnectionListener;->onConnect()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;->connectionListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public acknowledgePurchase(Ljava/lang/String;Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IAcknowledgePurchaseListener;)V
    .locals 1

    new-instance v0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/p;

    invoke-direct {v0, p0, p1, p2}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/p;-><init>(Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;Ljava/lang/String;Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IAcknowledgePurchaseListener;)V

    invoke-direct {p0, v0}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;->executeRequestOnConnect(Lcom/voxelbusters/essentialkit/billingservices/common/interfaces/IConnectionListener;)V

    return-void
.end method

.method public areSubscriptionsSupported()Z
    .locals 2

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;->billingClient:Lcom/android/billingclient/api/BillingClient;

    const-string v1, "subscriptions"

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingClient;->isFeatureSupported(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/voxelbusters/essentialkit/utilities/Logger;->error(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public consumePurchase(Ljava/lang/String;Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IConsumePurchaseListener;)V
    .locals 1

    new-instance v0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/n;

    invoke-direct {v0, p0, p1, p2}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/n;-><init>(Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;Ljava/lang/String;Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IConsumePurchaseListener;)V

    invoke-direct {p0, v0}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;->executeRequestOnConnect(Lcom/voxelbusters/essentialkit/billingservices/common/interfaces/IConnectionListener;)V

    return-void
.end method

.method public fetchPurchase(Ljava/lang/String;Lcom/voxelbusters/essentialkit/billingservices/common/interfaces/IFetchBillingPurchaseListener;)V
    .locals 1

    new-instance v0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/q;

    invoke-direct {v0, p0, p1, p2}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/q;-><init>(Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;Ljava/lang/String;Lcom/voxelbusters/essentialkit/billingservices/common/interfaces/IFetchBillingPurchaseListener;)V

    invoke-virtual {p0, v0}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;->queryValidPurchases(Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IQueryPurchasesListener;)V

    return-void
.end method

.method public getIncompletePurchases()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;->cachedValidPurchases:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/billingclient/api/Purchase;

    invoke-virtual {v2}, Lcom/android/billingclient/api/Purchase;->isAcknowledged()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public isProductPurchased(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;->cachedValidPurchases:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/billingclient/api/Purchase;

    invoke-virtual {v1}, Lcom/android/billingclient/api/Purchase;->getProducts()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    return v2
.end method

.method public isPurchaseValid(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/voxelbusters/essentialkit/billingservices/common/Security;->verifyPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Failed when validating purchase : "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/voxelbusters/essentialkit/utilities/Logger;->error(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public isServiceConnected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;->isServiceConnected:Z

    return v0
.end method

.method public onPurchasesUpdated(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/billingclient/api/BillingResult;",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;->getResponseCodeDescription(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onPurchasesUpdated with response code: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Response description: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/voxelbusters/essentialkit/utilities/Logger;->debug(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result v1

    if-nez v1, :cond_0

    if-eqz p2, :cond_0

    const-string p1, "Report purchase success..."

    invoke-static {p1}, Lcom/voxelbusters/essentialkit/utilities/Logger;->debug(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;->setCachedValidPurchases(Ljava/util/List;Z)V

    invoke-direct {p0}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;->refreshPurchases()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/billingclient/api/Purchase;

    invoke-virtual {v0}, Lcom/android/billingclient/api/Purchase;->getProducts()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v1, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;->purchasesStateListener:Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IPurchasesStateListener;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IPurchasesStateListener;->onPurchaseUpdated(Lcom/android/billingclient/api/Purchase;Lcom/voxelbusters/essentialkit/billingservices/common/BuyProductOptions;)V

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Report purchase failure... : "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;->currentPurchaseProductId:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/voxelbusters/essentialkit/utilities/Logger;->debug(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;->purchasesStateListener:Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IPurchasesStateListener;

    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;->currentPurchaseProductId:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;->currentPurchaseOptions:Lcom/voxelbusters/essentialkit/billingservices/common/BuyProductOptions;

    new-instance v3, Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;

    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;->getBillingServicesErrorCode(I)Lcom/voxelbusters/essentialkit/billingservices/common/BillingServicesErrorCode;

    move-result-object p1

    invoke-direct {v3, p1, v0}, Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;-><init>(Ljava/lang/Enum;Ljava/lang/String;)V

    invoke-interface {p2, v1, v2, v3}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IPurchasesStateListener;->onPurchaseFailed(Ljava/lang/String;Lcom/voxelbusters/essentialkit/billingservices/common/BuyProductOptions;Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;)V

    :cond_1
    invoke-direct {p0}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;->clearCurrentProcessingProduct()V

    return-void
.end method

.method public queryProductDetailsAndUpdatePurchases(Ljava/util/List;Ljava/util/List;Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IQueryProductDetailsListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IQueryProductDetailsListener;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/t;

    invoke-direct {v0, p0, p3}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/t;-><init>(Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IQueryProductDetailsListener;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;->queryProductDetails(Ljava/util/List;Ljava/util/List;Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IQueryProductDetailsListener;)V

    return-void
.end method

.method public queryValidPurchases(Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IQueryPurchasesListener;)V
    .locals 1

    new-instance v0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/i;

    invoke-direct {v0, p0, p1}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/i;-><init>(Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IQueryPurchasesListener;)V

    invoke-direct {p0, v0}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;->queryAllPurchasesInternal(Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IQueryPurchasesListener;)V

    return-void
.end method

.method public startInappProductPurchase(Ljava/lang/String;Lcom/voxelbusters/essentialkit/billingservices/common/BuyProductOptions;Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IStartProductPurchaseListener;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;->startProductPurchase(Ljava/lang/String;Ljava/lang/String;Lcom/voxelbusters/essentialkit/billingservices/common/BuyProductOptions;Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IStartProductPurchaseListener;)V

    return-void
.end method

.method public startSubscriptionProductPurchase(Ljava/lang/String;Lcom/voxelbusters/essentialkit/billingservices/common/BuyProductOptions;Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IStartProductPurchaseListener;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;->getProductDetails(Ljava/lang/String;)Lcom/android/billingclient/api/ProductDetails;

    move-result-object v0

    invoke-virtual {p2}, Lcom/voxelbusters/essentialkit/billingservices/common/BuyProductOptions;->getOfferId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/billingclient/api/ProductDetails;->getSubscriptionOfferDetails()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingClientUtility;->getSubscriptionOfferDetails(Ljava/util/List;Ljava/lang/String;)Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "No subscription offer details were found for the specified offerId: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/voxelbusters/essentialkit/utilities/Logger;->error(Ljava/lang/String;)V

    if-eqz p3, :cond_0

    new-instance v0, Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;

    sget-object v1, Lcom/voxelbusters/essentialkit/billingservices/common/BillingServicesErrorCode;->OfferNotValid:Lcom/voxelbusters/essentialkit/billingservices/common/BillingServicesErrorCode;

    invoke-direct {v0, v1, p2}, Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;-><init>(Ljava/lang/Enum;Ljava/lang/String;)V

    invoke-interface {p3, p1, v0}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IStartProductPurchaseListener;->onStartProductPurchaseFailed(Ljava/lang/String;Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/android/billingclient/api/ProductDetails$SubscriptionOfferDetails;->getOfferToken()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;->startProductPurchase(Ljava/lang/String;Ljava/lang/String;Lcom/voxelbusters/essentialkit/billingservices/common/BuyProductOptions;Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IStartProductPurchaseListener;)V

    return-void
.end method

.method public tryClearingIncompletePurchases()V
    .locals 1

    new-instance v0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/r;

    invoke-direct {v0, p0}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/r;-><init>(Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;)V

    invoke-direct {p0, v0}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;->queryAllPurchasesInternal(Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IQueryPurchasesListener;)V

    return-void
.end method
