.class public Lcom/voxelbusters/essentialkit/billingservices/common/BillingProduct;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxelbusters/essentialkit/billingservices/common/BillingProduct$Builder;
    }
.end annotation


# instance fields
.field private identifier:Ljava/lang/String;

.field private isAvailable:Z

.field private localizedDescription:Ljava/lang/String;

.field private localizedTitle:Ljava/lang/String;

.field private offers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOffer;",
            ">;"
        }
    .end annotation
.end field

.field private price:Lcom/voxelbusters/essentialkit/billingservices/common/BillingPrice;

.field private subscriptionInfo:Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionInfo;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProduct;->offers:Ljava/util/List;

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProduct;->identifier:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/voxelbusters/essentialkit/billingservices/common/a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProduct;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$102(Lcom/voxelbusters/essentialkit/billingservices/common/BillingProduct;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProduct;->identifier:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$202(Lcom/voxelbusters/essentialkit/billingservices/common/BillingProduct;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProduct;->localizedTitle:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$302(Lcom/voxelbusters/essentialkit/billingservices/common/BillingProduct;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProduct;->localizedDescription:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$402(Lcom/voxelbusters/essentialkit/billingservices/common/BillingProduct;Lcom/voxelbusters/essentialkit/billingservices/common/BillingPrice;)Lcom/voxelbusters/essentialkit/billingservices/common/BillingPrice;
    .locals 0

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProduct;->price:Lcom/voxelbusters/essentialkit/billingservices/common/BillingPrice;

    return-object p1
.end method

.method public static synthetic access$502(Lcom/voxelbusters/essentialkit/billingservices/common/BillingProduct;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProduct;->isAvailable:Z

    return p1
.end method

.method public static synthetic access$602(Lcom/voxelbusters/essentialkit/billingservices/common/BillingProduct;Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionInfo;)Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionInfo;
    .locals 0

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProduct;->subscriptionInfo:Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionInfo;

    return-object p1
.end method

.method public static synthetic access$702(Lcom/voxelbusters/essentialkit/billingservices/common/BillingProduct;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProduct;->offers:Ljava/util/List;

    return-object p1
.end method


# virtual methods
.method public getIdentifier()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProduct;->identifier:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalizedDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProduct;->localizedDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalizedTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProduct;->localizedTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getOffers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOffer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProduct;->offers:Ljava/util/List;

    return-object v0
.end method

.method public getPrice()Lcom/voxelbusters/essentialkit/billingservices/common/BillingPrice;
    .locals 1

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProduct;->price:Lcom/voxelbusters/essentialkit/billingservices/common/BillingPrice;

    return-object v0
.end method

.method public getSubscriptionInfo()Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionInfo;
    .locals 1

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProduct;->subscriptionInfo:Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionInfo;

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProduct;->isAvailable:Z

    return v0
.end method
