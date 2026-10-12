.class public final enum Lcom/voxelbusters/essentialkit/billingservices/common/BillingEnvironment;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/voxelbusters/essentialkit/billingservices/common/BillingEnvironment;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/voxelbusters/essentialkit/billingservices/common/BillingEnvironment;

.field public static final enum Local:Lcom/voxelbusters/essentialkit/billingservices/common/BillingEnvironment;

.field public static final enum Production:Lcom/voxelbusters/essentialkit/billingservices/common/BillingEnvironment;

.field public static final enum Sandbox:Lcom/voxelbusters/essentialkit/billingservices/common/BillingEnvironment;

.field public static final enum Unknown:Lcom/voxelbusters/essentialkit/billingservices/common/BillingEnvironment;


# direct methods
.method private static synthetic $values()[Lcom/voxelbusters/essentialkit/billingservices/common/BillingEnvironment;
    .locals 4

    sget-object v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingEnvironment;->Unknown:Lcom/voxelbusters/essentialkit/billingservices/common/BillingEnvironment;

    sget-object v1, Lcom/voxelbusters/essentialkit/billingservices/common/BillingEnvironment;->Production:Lcom/voxelbusters/essentialkit/billingservices/common/BillingEnvironment;

    sget-object v2, Lcom/voxelbusters/essentialkit/billingservices/common/BillingEnvironment;->Sandbox:Lcom/voxelbusters/essentialkit/billingservices/common/BillingEnvironment;

    sget-object v3, Lcom/voxelbusters/essentialkit/billingservices/common/BillingEnvironment;->Local:Lcom/voxelbusters/essentialkit/billingservices/common/BillingEnvironment;

    filled-new-array {v0, v1, v2, v3}, [Lcom/voxelbusters/essentialkit/billingservices/common/BillingEnvironment;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingEnvironment;

    const-string v1, "Unknown"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingEnvironment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingEnvironment;->Unknown:Lcom/voxelbusters/essentialkit/billingservices/common/BillingEnvironment;

    new-instance v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingEnvironment;

    const-string v1, "Production"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingEnvironment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingEnvironment;->Production:Lcom/voxelbusters/essentialkit/billingservices/common/BillingEnvironment;

    new-instance v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingEnvironment;

    const-string v1, "Sandbox"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingEnvironment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingEnvironment;->Sandbox:Lcom/voxelbusters/essentialkit/billingservices/common/BillingEnvironment;

    new-instance v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingEnvironment;

    const-string v1, "Local"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingEnvironment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingEnvironment;->Local:Lcom/voxelbusters/essentialkit/billingservices/common/BillingEnvironment;

    invoke-static {}, Lcom/voxelbusters/essentialkit/billingservices/common/BillingEnvironment;->$values()[Lcom/voxelbusters/essentialkit/billingservices/common/BillingEnvironment;

    move-result-object v0

    sput-object v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingEnvironment;->$VALUES:[Lcom/voxelbusters/essentialkit/billingservices/common/BillingEnvironment;

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

.method public static valueOf(Ljava/lang/String;)Lcom/voxelbusters/essentialkit/billingservices/common/BillingEnvironment;
    .locals 1

    const-class v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingEnvironment;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingEnvironment;

    return-object p0
.end method

.method public static values()[Lcom/voxelbusters/essentialkit/billingservices/common/BillingEnvironment;
    .locals 1

    sget-object v0, Lcom/voxelbusters/essentialkit/billingservices/common/BillingEnvironment;->$VALUES:[Lcom/voxelbusters/essentialkit/billingservices/common/BillingEnvironment;

    invoke-virtual {v0}, [Lcom/voxelbusters/essentialkit/billingservices/common/BillingEnvironment;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/voxelbusters/essentialkit/billingservices/common/BillingEnvironment;

    return-object v0
.end method
