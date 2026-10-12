.class public Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/voxelbusters/essentialkit/billingservices/common/interfaces/IBillingServices;
.implements Lcom/voxelbusters/essentialkit/utilities/common/interfaces/IFeature;


# instance fields
.field private allBillingProducts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/voxelbusters/essentialkit/billingservices/common/BillingProduct;",
            ">;"
        }
    .end annotation
.end field

.field private consumableProductIdentifiers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private final instance:Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;

.field private nonConsumableProductIdentifiers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private publicKey:Ljava/lang/String;

.field private purchasesStateListener:Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IPurchasesStateListener;

.field private subscriptionProductIdentifiers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private transactionStateListener:Lcom/voxelbusters/essentialkit/billingservices/common/interfaces/IBillingTransactionStateListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/u;

    invoke-direct {v0, p0}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/u;-><init>(Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;)V

    iput-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;->purchasesStateListener:Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IPurchasesStateListener;

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;->context:Landroid/content/Context;

    new-instance v1, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;

    invoke-direct {v1, p1, v0}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;-><init>(Landroid/content/Context;Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IPurchasesStateListener;)V

    iput-object v1, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;->instance:Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;

    return-void
.end method

.method public static synthetic access$000(Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;)Lcom/voxelbusters/essentialkit/billingservices/common/interfaces/IBillingTransactionStateListener;
    .locals 0

    iget-object p0, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;->transactionStateListener:Lcom/voxelbusters/essentialkit/billingservices/common/interfaces/IBillingTransactionStateListener;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;Ljava/lang/String;Lcom/voxelbusters/essentialkit/billingservices/common/BuyProductOptions;Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionState;)Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction$Builder;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;->getNonPurchasedBillingTransactionBuilder(Ljava/lang/String;Lcom/voxelbusters/essentialkit/billingservices/common/BuyProductOptions;Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionState;)Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$200(Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;Lcom/android/billingclient/api/Purchase;)Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction$Builder;
    .locals 0

    invoke-direct {p0, p1}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;->getBillingTransactionBuilder(Lcom/android/billingclient/api/Purchase;)Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$300(Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;->allBillingProducts:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$302(Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;->allBillingProducts:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic access$400(Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;Ljava/util/List;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;->getBillingProducts(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$500(Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;->subscriptionProductIdentifiers:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;->getInvalidIds(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$700(Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;)Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IPurchasesStateListener;
    .locals 0

    iget-object p0, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;->purchasesStateListener:Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IPurchasesStateListener;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;->isConsumableProduct(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$900(Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;)Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;
    .locals 0

    iget-object p0, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;->instance:Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;

    return-object p0
.end method

.method private createProductIdsList([Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object p1, v1

    :goto_0
    invoke-interface {p1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    return-object p1
.end method

.method private getBillingProducts(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/ProductDetails;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/voxelbusters/essentialkit/billingservices/common/BillingProduct;",
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

    check-cast v1, Lcom/android/billingclient/api/ProductDetails;

    invoke-static {v1}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingClientUtility;->convertToBillingProduct(Lcom/android/billingclient/api/ProductDetails;)Lcom/voxelbusters/essentialkit/billingservices/common/BillingProduct;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private getBillingTransactionBuilder(Lcom/android/billingclient/api/Purchase;)Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction$Builder;
    .locals 7

    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getOrderId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getProducts()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "transaction"

    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getOriginalJson()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "signature"

    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getSignature()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v3, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction$Builder;

    invoke-direct {v3, v0}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction$Builder;->setProductIdentifier(Ljava/lang/String;)Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction$Builder;

    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction$Builder;->setRequestedQuantity(I)Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction$Builder;

    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getQuantity()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction$Builder;->setPurchasedQuantity(I)Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction$Builder;

    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getAccountIdentifiers()Lcom/android/billingclient/api/AccountIdentifiers;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;->getPurchaseTag(Lcom/android/billingclient/api/AccountIdentifiers;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction$Builder;->setPurchaseTag(Ljava/lang/String;)Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction$Builder;

    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getPurchaseTime()J

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v0}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction$Builder;->setDate(Ljava/util/Date;)Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction$Builder;

    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getPurchaseState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;->getTransactionState(I)Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionState;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction$Builder;->setState(Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionState;)Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction$Builder;

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;->instance:Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;

    iget-object v4, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;->publicKey:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getOriginalJson()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getSignature()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v4, v5, v6}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;->isPurchaseValid(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionVerificationState;->Success:Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionVerificationState;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionVerificationState;->Failure:Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionVerificationState;

    :goto_0
    invoke-virtual {v3, v0}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction$Builder;->setVerificationState(Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionVerificationState;)Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction$Builder;

    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getPurchaseToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction$Builder;->setReceipt(Ljava/lang/String;)Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction$Builder;

    invoke-direct {p0}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;->getEnvironment()Lcom/voxelbusters/essentialkit/billingservices/common/BillingEnvironment;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction$Builder;->setEnvironment(Lcom/voxelbusters/essentialkit/billingservices/common/BillingEnvironment;)Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction$Builder;

    invoke-direct {p0, v1}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;->getProductType(Ljava/lang/String;)Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductType;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction$Builder;->setProductType(Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductType;)Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction$Builder;

    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction$Builder;->setRevocationInfo(Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductRevocationInfo;)Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction$Builder;

    invoke-direct {p0, p1}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;->getSubscriptionStatus(Lcom/android/billingclient/api/Purchase;)Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionStatus;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction$Builder;->setSubscriptionStatus(Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionStatus;)Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction$Builder;

    invoke-virtual {v3, v2}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction$Builder;->setRawData(Ljava/lang/String;)Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction$Builder;

    return-object v3

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private getBillingTransactions(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/billingclient/api/Purchase;

    invoke-direct {p0, v1}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;->getBillingTransactionBuilder(Lcom/android/billingclient/api/Purchase;)Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction$Builder;->build()Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private getEnvironment()Lcom/voxelbusters/essentialkit/billingservices/common/BillingEnvironment;
    .locals 1

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/voxelbusters/essentialkit/utilities/ApplicationUtil;->isDebugBuild(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingEnvironment;->Local:Lcom/voxelbusters/essentialkit/billingservices/common/BillingEnvironment;

    return-object v0

    :cond_0
    sget-object v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingEnvironment;->Unknown:Lcom/voxelbusters/essentialkit/billingservices/common/BillingEnvironment;

    return-object v0
.end method

.method private getInvalidIds(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/voxelbusters/essentialkit/billingservices/common/BillingProduct;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
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

    check-cast v1, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProduct;

    invoke-virtual {v1}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProduct;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x0

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    if-nez p2, :cond_2

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    :cond_2
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    return-object p2
.end method

.method private getNonPurchasedBillingTransactionBuilder(Ljava/lang/String;Lcom/voxelbusters/essentialkit/billingservices/common/BuyProductOptions;Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionState;)Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction$Builder;
    .locals 2

    new-instance v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction$Builder;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction$Builder;->setProductIdentifier(Ljava/lang/String;)Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction$Builder;

    invoke-direct {p0, p1}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;->isConsumableProduct(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p1, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductType;->Consumable:Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductType;

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;->isSubscriptionProduct(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductType;->Subscription:Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductType;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductType;->NonConsumable:Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductType;

    :goto_0
    invoke-virtual {v0, p1}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction$Builder;->setProductType(Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductType;)Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction$Builder;

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction$Builder;->setDate(Ljava/util/Date;)Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction$Builder;

    invoke-virtual {p2}, Lcom/voxelbusters/essentialkit/billingservices/common/BuyProductOptions;->getTag()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction$Builder;->setPurchaseTag(Ljava/lang/String;)Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction$Builder;

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction$Builder;->setPurchasedQuantity(I)Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction$Builder;

    invoke-virtual {p2}, Lcom/voxelbusters/essentialkit/billingservices/common/BuyProductOptions;->getQuantity()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction$Builder;->setRequestedQuantity(I)Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction$Builder;

    invoke-virtual {v0, p3}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction$Builder;->setState(Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionState;)Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction$Builder;

    invoke-direct {p0}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;->getEnvironment()Lcom/voxelbusters/essentialkit/billingservices/common/BillingEnvironment;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction$Builder;->setEnvironment(Lcom/voxelbusters/essentialkit/billingservices/common/BillingEnvironment;)Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction$Builder;

    sget-object p1, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionVerificationState;->Failure:Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionVerificationState;

    invoke-virtual {v0, p1}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction$Builder;->setVerificationState(Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionVerificationState;)Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction$Builder;

    return-object v0
.end method

.method private getProductType(Ljava/lang/String;)Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductType;
    .locals 2

    invoke-direct {p0, p1}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;->isConsumableProduct(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductType;->Consumable:Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductType;

    return-object p1

    :cond_0
    invoke-direct {p0, p1}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;->isNonConsumableProduct(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p1, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductType;->NonConsumable:Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductType;

    return-object p1

    :cond_1
    invoke-direct {p0, p1}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;->isSubscriptionProduct(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p1, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductType;->Subscription:Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductType;

    return-object p1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected product identified : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BillingServices"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductType;->NonConsumable:Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductType;

    return-object p1
.end method

.method private getPurchaseTag(Lcom/android/billingclient/api/AccountIdentifiers;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/android/billingclient/api/AccountIdentifiers;->getObfuscatedAccountId()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getRenewalInfo(Lcom/android/billingclient/api/Purchase;)Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionRenewalInfo;
    .locals 11

    sget-object v1, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionRenewalState;->Unknown:Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionRenewalState;

    sget-object v3, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferCategory;->Unknown:Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferCategory;

    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->isAutoRenewing()Z

    move-result v6

    sget-object v7, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionExpirationReason;->Unknown:Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionExpirationReason;

    sget-object v10, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionPriceIncreaseStatus;->Unknown:Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionPriceIncreaseStatus;

    new-instance p1, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionRenewalInfo;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v10}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionRenewalInfo;-><init>(Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionRenewalState;Ljava/lang/String;Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferCategory;Ljava/util/Date;Ljava/lang/String;ZLcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionExpirationReason;Ljava/util/Date;Ljava/util/Date;Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionPriceIncreaseStatus;)V

    return-object p1
.end method

.method private getStartProductPurchaseListener(Lcom/voxelbusters/essentialkit/billingservices/common/BuyProductOptions;)Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IStartProductPurchaseListener;
    .locals 1

    new-instance v0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/w;

    invoke-direct {v0, p0, p1}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/w;-><init>(Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;Lcom/voxelbusters/essentialkit/billingservices/common/BuyProductOptions;)V

    return-object v0
.end method

.method private getSubscriptionStatus(Lcom/android/billingclient/api/Purchase;)Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionStatus;
    .locals 8

    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getProducts()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;->isSubscriptionProduct(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    return-object v1

    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;->getRenewalInfo(Lcom/android/billingclient/api/Purchase;)Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionRenewalInfo;

    move-result-object v3

    sget-object v7, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferCategory;->Unknown:Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferCategory;

    new-instance p1, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionStatus;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionStatus;-><init>(Ljava/lang/String;Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionRenewalInfo;Ljava/util/Date;ZLjava/lang/String;Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferCategory;)V

    return-object p1

    :cond_2
    :goto_0
    return-object v1
.end method

.method private getTransactionState(I)Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionState;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    sget-object p1, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionState;->Unknown:Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionState;

    return-object p1

    :cond_0
    sget-object p1, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionState;->Deferred:Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionState;

    return-object p1

    :cond_1
    sget-object p1, Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionState;->Purchased:Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransactionState;

    return-object p1
.end method

.method private isConsumableProduct(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;->consumableProductIdentifiers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private isNonConsumableProduct(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;->nonConsumableProductIdentifiers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private isStoreInitialized()Z
    .locals 1

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;->allBillingProducts:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isSubscriptionProduct(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;->subscriptionProductIdentifiers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public buyProduct(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/voxelbusters/essentialkit/utilities/common/annotations/RunOnUiThread;
    .end annotation

    new-instance v0, Lcom/voxelbusters/essentialkit/billingservices/common/BuyProductOptions;

    invoke-direct {v0, p2, p3, p4}, Lcom/voxelbusters/essentialkit/billingservices/common/BuyProductOptions;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;->getStartProductPurchaseListener(Lcom/voxelbusters/essentialkit/billingservices/common/BuyProductOptions;)Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IStartProductPurchaseListener;

    move-result-object p2

    invoke-direct {p0}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;->isStoreInitialized()Z

    move-result p3

    if-nez p3, :cond_0

    new-instance p3, Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;

    sget-object p4, Lcom/voxelbusters/essentialkit/billingservices/common/BillingServicesErrorCode;->StoreNotInitialized:Lcom/voxelbusters/essentialkit/billingservices/common/BillingServicesErrorCode;

    const-string v0, "Store is not initialized."

    invoke-direct {p3, p4, v0}, Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;-><init>(Ljava/lang/Enum;Ljava/lang/String;)V

    invoke-interface {p2, p1, p3}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IStartProductPurchaseListener;->onStartProductPurchaseFailed(Ljava/lang/String;Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;->isSubscriptionProduct(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;->instance:Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;

    invoke-virtual {p3, p1, v0, p2}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;->startSubscriptionProductPurchase(Ljava/lang/String;Lcom/voxelbusters/essentialkit/billingservices/common/BuyProductOptions;Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IStartProductPurchaseListener;)V

    goto :goto_0

    :cond_1
    iget-object p3, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;->instance:Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;

    invoke-virtual {p3, p1, v0, p2}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;->startInappProductPurchase(Ljava/lang/String;Lcom/voxelbusters/essentialkit/billingservices/common/BuyProductOptions;Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IStartProductPurchaseListener;)V

    :goto_0
    return-void
.end method

.method public canMakePayments()Z
    .locals 1

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;->instance:Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;

    invoke-virtual {v0}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;->isServiceConnected()Z

    move-result v0

    return v0
.end method

.method public fetchProductDetails(Lcom/voxelbusters/essentialkit/billingservices/common/interfaces/IFetchBillingProductsListener;)V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;->consumableProductIdentifiers:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;->nonConsumableProductIdentifiers:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Total products to fetch : InApps( "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ) + Subscriptions( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;->subscriptionProductIdentifiers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/voxelbusters/essentialkit/utilities/Logger;->debug(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;->instance:Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;

    iget-object v2, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;->subscriptionProductIdentifiers:Ljava/util/List;

    new-instance v3, Lcom/voxelbusters/essentialkit/billingservices/providers/google/v;

    invoke-direct {v3, p0, v0, p1}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/v;-><init>(Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;Ljava/util/ArrayList;Lcom/voxelbusters/essentialkit/billingservices/common/interfaces/IFetchBillingProductsListener;)V

    invoke-virtual {v1, v0, v2, v3}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;->queryProductDetailsAndUpdatePurchases(Ljava/util/List;Ljava/util/List;Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IQueryProductDetailsListener;)V

    return-void
.end method

.method public finishBillingTransaction(Ljava/lang/String;Z)V
    .locals 2

    invoke-static {p1}, Lcom/voxelbusters/essentialkit/utilities/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;->instance:Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;

    new-instance v1, Lcom/voxelbusters/essentialkit/billingservices/providers/google/z;

    invoke-direct {v1, p0, p1, p2}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/z;-><init>(Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;Ljava/lang/String;Z)V

    invoke-virtual {v0, p1, v1}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;->fetchPurchase(Ljava/lang/String;Lcom/voxelbusters/essentialkit/billingservices/common/interfaces/IFetchBillingPurchaseListener;)V

    return-void
.end method

.method public getFeatureName()Ljava/lang/String;
    .locals 1

    const-string v0, "Google Billing Services Handler"

    return-object v0
.end method

.method public getIncompleteBillingTransactions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/voxelbusters/essentialkit/billingservices/common/BillingTransaction;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;->instance:Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;

    invoke-virtual {v0}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;->getIncompletePurchases()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;->getBillingTransactions(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public initialise(Ljava/lang/String;Lcom/voxelbusters/essentialkit/billingservices/common/interfaces/IBillingTransactionStateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;->publicKey:Ljava/lang/String;

    iput-object p2, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;->transactionStateListener:Lcom/voxelbusters/essentialkit/billingservices/common/interfaces/IBillingTransactionStateListener;

    return-void
.end method

.method public isProductPurchased(Ljava/lang/String;)Z
    .locals 2

    invoke-direct {p0}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;->isStoreInitialized()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p1, "Store not initialized. Returning false."

    invoke-static {p1}, Lcom/voxelbusters/essentialkit/utilities/Logger;->error(Ljava/lang/String;)V

    return v1

    :cond_0
    invoke-static {p1}, Lcom/voxelbusters/essentialkit/utilities/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-direct {p0, p1}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;->isConsumableProduct(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "IsProductPurchased called for consumable product. Returning false."

    invoke-static {p1}, Lcom/voxelbusters/essentialkit/utilities/Logger;->debug(Ljava/lang/String;)V

    return v1

    :cond_2
    iget-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;->instance:Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;

    invoke-virtual {v0, p1}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;->isProductPurchased(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public restorePurchases(ZLjava/lang/String;Lcom/voxelbusters/essentialkit/billingservices/common/interfaces/IRestorePurchasesListener;)V
    .locals 1

    invoke-direct {p0}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;->isStoreInitialized()Z

    move-result p1

    if-nez p1, :cond_1

    if-eqz p3, :cond_0

    new-instance p1, Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;

    sget-object p2, Lcom/voxelbusters/essentialkit/billingservices/common/BillingServicesErrorCode;->StoreNotInitialized:Lcom/voxelbusters/essentialkit/billingservices/common/BillingServicesErrorCode;

    const-string v0, "Store is not initialized."

    invoke-direct {p1, p2, v0}, Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;-><init>(Ljava/lang/Enum;Ljava/lang/String;)V

    invoke-interface {p3, p1}, Lcom/voxelbusters/essentialkit/billingservices/common/interfaces/IRestorePurchasesListener;->onFailure(Lcom/voxelbusters/essentialkit/utilities/common/ErrorInfo;)V

    :cond_0
    return-void

    :cond_1
    iget-object p1, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;->instance:Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;

    new-instance v0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/a0;

    invoke-direct {v0, p0, p2, p3}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/a0;-><init>(Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;Ljava/lang/String;Lcom/voxelbusters/essentialkit/billingservices/common/interfaces/IRestorePurchasesListener;)V

    invoke-virtual {p1, v0}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;->queryValidPurchases(Lcom/voxelbusters/essentialkit/billingservices/providers/google/interfaces/IQueryPurchasesListener;)V

    return-void
.end method

.method public setProducts([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;->createProductIdsList([Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;->consumableProductIdentifiers:Ljava/util/List;

    invoke-direct {p0, p2}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;->createProductIdsList([Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;->nonConsumableProductIdentifiers:Ljava/util/List;

    invoke-direct {p0, p3}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;->createProductIdsList([Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;->subscriptionProductIdentifiers:Ljava/util/List;

    return-void
.end method

.method public tryClearingIncompleteTransactions()V
    .locals 1

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingServices;->instance:Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;

    invoke-virtual {v0}, Lcom/voxelbusters/essentialkit/billingservices/providers/google/GoogleBillingClient;->tryClearingIncompletePurchases()V

    return-void
.end method
