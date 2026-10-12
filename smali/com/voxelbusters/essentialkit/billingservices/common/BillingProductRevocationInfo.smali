.class public Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductRevocationInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private date:Ljava/util/Date;

.field private reason:Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductRevocationReason;


# direct methods
.method public constructor <init>(Ljava/util/Date;Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductRevocationReason;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductRevocationInfo;->date:Ljava/util/Date;

    iput-object p2, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductRevocationInfo;->reason:Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductRevocationReason;

    return-void
.end method


# virtual methods
.method public getDate()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductRevocationInfo;->date:Ljava/util/Date;

    return-object v0
.end method

.method public getReason()Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductRevocationReason;
    .locals 1

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductRevocationInfo;->reason:Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductRevocationReason;

    return-object v0
.end method
