.class public final enum Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductRevocationReason;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductRevocationReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductRevocationReason;

.field public static final enum DeveloperIssue:Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductRevocationReason;

.field public static final enum None:Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductRevocationReason;

.field public static final enum Unknown:Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductRevocationReason;


# direct methods
.method private static synthetic $values()[Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductRevocationReason;
    .locals 3

    sget-object v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductRevocationReason;->None:Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductRevocationReason;

    sget-object v1, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductRevocationReason;->Unknown:Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductRevocationReason;

    sget-object v2, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductRevocationReason;->DeveloperIssue:Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductRevocationReason;

    filled-new-array {v0, v1, v2}, [Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductRevocationReason;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductRevocationReason;

    const-string v1, "None"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductRevocationReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductRevocationReason;->None:Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductRevocationReason;

    new-instance v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductRevocationReason;

    const-string v1, "Unknown"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductRevocationReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductRevocationReason;->Unknown:Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductRevocationReason;

    new-instance v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductRevocationReason;

    const-string v1, "DeveloperIssue"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductRevocationReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductRevocationReason;->DeveloperIssue:Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductRevocationReason;

    invoke-static {}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductRevocationReason;->$values()[Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductRevocationReason;

    move-result-object v0

    sput-object v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductRevocationReason;->$VALUES:[Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductRevocationReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductRevocationReason;
    .locals 1

    const-class v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductRevocationReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductRevocationReason;

    return-object p0
.end method

.method public static values()[Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductRevocationReason;
    .locals 1

    sget-object v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductRevocationReason;->$VALUES:[Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductRevocationReason;

    invoke-virtual {v0}, [Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductRevocationReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/voxelbusters/essentialkit/billingservices/common/BillingProductRevocationReason;

    return-object v0
.end method
