.class public Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionRenewalInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private applicableOfferCategory:Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferCategory;

.field private applicableOfferIdentifier:Ljava/lang/String;

.field private expirationReason:Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionExpirationReason;

.field private gracePeriodExpirationDate:Ljava/util/Date;

.field private isAutoRenewEnabled:Z

.field private lastRenewalId:Ljava/lang/String;

.field private lastRenewedDate:Ljava/util/Date;

.field private priceIncreaseStatus:Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionPriceIncreaseStatus;

.field private renewalDate:Ljava/util/Date;

.field private state:Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionRenewalState;


# direct methods
.method public constructor <init>(Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionRenewalState;Ljava/lang/String;Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferCategory;Ljava/util/Date;Ljava/lang/String;ZLcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionExpirationReason;Ljava/util/Date;Ljava/util/Date;Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionPriceIncreaseStatus;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionRenewalInfo;->state:Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionRenewalState;

    iput-object p2, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionRenewalInfo;->applicableOfferIdentifier:Ljava/lang/String;

    iput-object p3, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionRenewalInfo;->applicableOfferCategory:Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferCategory;

    iput-object p4, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionRenewalInfo;->lastRenewedDate:Ljava/util/Date;

    iput-object p5, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionRenewalInfo;->lastRenewalId:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionRenewalInfo;->isAutoRenewEnabled:Z

    iput-object p7, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionRenewalInfo;->expirationReason:Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionExpirationReason;

    iput-object p8, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionRenewalInfo;->renewalDate:Ljava/util/Date;

    iput-object p9, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionRenewalInfo;->gracePeriodExpirationDate:Ljava/util/Date;

    iput-object p10, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionRenewalInfo;->priceIncreaseStatus:Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionPriceIncreaseStatus;

    return-void
.end method


# virtual methods
.method public getApplicableOfferCategory()Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferCategory;
    .locals 1

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionRenewalInfo;->applicableOfferCategory:Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferCategory;

    return-object v0
.end method

.method public getApplicableOfferIdentifier()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionRenewalInfo;->applicableOfferIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public getAutoRenewEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionRenewalInfo;->isAutoRenewEnabled:Z

    return v0
.end method

.method public getExpirationReason()Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionExpirationReason;
    .locals 1

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionRenewalInfo;->expirationReason:Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionExpirationReason;

    return-object v0
.end method

.method public getGracePeriodExpirationDate()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionRenewalInfo;->gracePeriodExpirationDate:Ljava/util/Date;

    return-object v0
.end method

.method public getLastRenewalId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionRenewalInfo;->lastRenewalId:Ljava/lang/String;

    return-object v0
.end method

.method public getLastRenewedDate()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionRenewalInfo;->lastRenewedDate:Ljava/util/Date;

    return-object v0
.end method

.method public getPriceIncreaseStatus()Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionPriceIncreaseStatus;
    .locals 1

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionRenewalInfo;->priceIncreaseStatus:Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionPriceIncreaseStatus;

    return-object v0
.end method

.method public getRenewalDate()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionRenewalInfo;->renewalDate:Ljava/util/Date;

    return-object v0
.end method

.method public getState()Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionRenewalState;
    .locals 1

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionRenewalInfo;->state:Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionRenewalState;

    return-object v0
.end method
