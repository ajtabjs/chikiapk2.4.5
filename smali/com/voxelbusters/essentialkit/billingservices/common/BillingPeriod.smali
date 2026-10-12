.class public Lcom/voxelbusters/essentialkit/billingservices/common/BillingPeriod;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final duration:F

.field private final unit:Lcom/voxelbusters/essentialkit/billingservices/common/BillingPeriodUnit;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingPeriodUnit;->Day:Lcom/voxelbusters/essentialkit/billingservices/common/BillingPeriodUnit;

    invoke-static {p1}, Lcom/voxelbusters/essentialkit/utilities/StringUtil;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string p1, "Period string can\'t be null."

    goto/16 :goto_3

    :cond_0
    const-string v1, "P"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const-string v3, "Period string is in invalid format."

    if-nez v1, :cond_1

    invoke-static {v3}, Lcom/voxelbusters/essentialkit/utilities/Logger;->error(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v4, 0x1

    sub-int/2addr v1, v4

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v4

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    int-to-float v2, p1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result p1

    const/16 v5, 0x44

    const/4 v6, 0x3

    const/4 v7, 0x2

    if-eq p1, v5, :cond_5

    const/16 v5, 0x4d

    if-eq p1, v5, :cond_4

    const/16 v5, 0x57

    if-eq p1, v5, :cond_3

    const/16 v5, 0x59

    if-eq p1, v5, :cond_2

    goto :goto_0

    :cond_2
    const-string p1, "Y"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    move p1, v6

    goto :goto_1

    :cond_3
    const-string p1, "W"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    move p1, v4

    goto :goto_1

    :cond_4
    const-string p1, "M"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    move p1, v7

    goto :goto_1

    :cond_5
    const-string p1, "D"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 p1, 0x0

    goto :goto_1

    :cond_6
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_a

    if-eq p1, v4, :cond_9

    if-eq p1, v7, :cond_8

    if-ne p1, v6, :cond_7

    sget-object p1, Lcom/voxelbusters/essentialkit/billingservices/common/BillingPeriodUnit;->Year:Lcom/voxelbusters/essentialkit/billingservices/common/BillingPeriodUnit;

    :goto_2
    move-object v0, p1

    goto :goto_4

    :cond_7
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    sget-object p1, Lcom/voxelbusters/essentialkit/billingservices/common/BillingPeriodUnit;->Month:Lcom/voxelbusters/essentialkit/billingservices/common/BillingPeriodUnit;

    goto :goto_2

    :cond_9
    sget-object p1, Lcom/voxelbusters/essentialkit/billingservices/common/BillingPeriodUnit;->Week:Lcom/voxelbusters/essentialkit/billingservices/common/BillingPeriodUnit;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Failed parsing billing period string."

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_3
    invoke-static {p1}, Lcom/voxelbusters/essentialkit/utilities/Logger;->error(Ljava/lang/String;)V

    :cond_a
    :goto_4
    iput v2, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingPeriod;->duration:F

    iput-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingPeriod;->unit:Lcom/voxelbusters/essentialkit/billingservices/common/BillingPeriodUnit;

    return-void
.end method


# virtual methods
.method public getDuration()F
    .locals 1

    iget v0, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingPeriod;->duration:F

    return v0
.end method

.method public getUnit()Lcom/voxelbusters/essentialkit/billingservices/common/BillingPeriodUnit;
    .locals 1

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingPeriod;->unit:Lcom/voxelbusters/essentialkit/billingservices/common/BillingPeriodUnit;

    return-object v0
.end method
