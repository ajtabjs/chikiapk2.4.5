.class public Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final groupId:Ljava/lang/String;

.field private final level:I

.field private final localizedGroupTitle:Ljava/lang/String;

.field private final period:Lcom/voxelbusters/essentialkit/billingservices/common/BillingPeriod;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILcom/voxelbusters/essentialkit/billingservices/common/BillingPeriod;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionInfo;->groupId:Ljava/lang/String;

    iput-object p2, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionInfo;->localizedGroupTitle:Ljava/lang/String;

    iput p3, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionInfo;->level:I

    iput-object p4, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionInfo;->period:Lcom/voxelbusters/essentialkit/billingservices/common/BillingPeriod;

    return-void
.end method


# virtual methods
.method public getGroupId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionInfo;->groupId:Ljava/lang/String;

    return-object v0
.end method

.method public getLevel()I
    .locals 1

    iget v0, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionInfo;->level:I

    return v0
.end method

.method public getLocalizedGroupTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionInfo;->localizedGroupTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getPeriod()Lcom/voxelbusters/essentialkit/billingservices/common/BillingPeriod;
    .locals 1

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductSubscriptionInfo;->period:Lcom/voxelbusters/essentialkit/billingservices/common/BillingPeriod;

    return-object v0
.end method
