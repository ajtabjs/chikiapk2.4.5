.class public Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionStatus;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private appliedOfferCategory:Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferCategory;

.field private appliedOfferId:Ljava/lang/String;

.field private expirationDate:Ljava/util/Date;

.field private groupId:Ljava/lang/String;

.field private isUpgraded:Z

.field private renewalInfo:Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionRenewalInfo;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionRenewalInfo;Ljava/util/Date;ZLjava/lang/String;Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferCategory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionStatus;->groupId:Ljava/lang/String;

    iput-object p2, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionStatus;->renewalInfo:Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionRenewalInfo;

    iput-object p3, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionStatus;->expirationDate:Ljava/util/Date;

    iput-boolean p4, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionStatus;->isUpgraded:Z

    iput-object p5, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionStatus;->appliedOfferId:Ljava/lang/String;

    iput-object p6, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionStatus;->appliedOfferCategory:Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferCategory;

    return-void
.end method


# virtual methods
.method public getAppliedOfferCategory()Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferCategory;
    .locals 1

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionStatus;->appliedOfferCategory:Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductOfferCategory;

    return-object v0
.end method

.method public getAppliedOfferId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionStatus;->appliedOfferId:Ljava/lang/String;

    return-object v0
.end method

.method public getExpirationDate()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionStatus;->expirationDate:Ljava/util/Date;

    return-object v0
.end method

.method public getGroupId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionStatus;->groupId:Ljava/lang/String;

    return-object v0
.end method

.method public getRenewalInfo()Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionRenewalInfo;
    .locals 1

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionStatus;->renewalInfo:Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionRenewalInfo;

    return-object v0
.end method

.method public getUpgraded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionStatus;->isUpgraded:Z

    return v0
.end method
