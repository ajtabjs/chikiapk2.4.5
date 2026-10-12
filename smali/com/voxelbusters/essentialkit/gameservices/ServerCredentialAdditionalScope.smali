.class public final enum Lcom/voxelbusters/essentialkit/gameservices/ServerCredentialAdditionalScope;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/voxelbusters/essentialkit/gameservices/ServerCredentialAdditionalScope;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/voxelbusters/essentialkit/gameservices/ServerCredentialAdditionalScope;

.field public static final enum Email:Lcom/voxelbusters/essentialkit/gameservices/ServerCredentialAdditionalScope;

.field public static final enum None:Lcom/voxelbusters/essentialkit/gameservices/ServerCredentialAdditionalScope;

.field public static final enum OpenId:Lcom/voxelbusters/essentialkit/gameservices/ServerCredentialAdditionalScope;

.field public static final enum Profile:Lcom/voxelbusters/essentialkit/gameservices/ServerCredentialAdditionalScope;


# direct methods
.method private static synthetic $values()[Lcom/voxelbusters/essentialkit/gameservices/ServerCredentialAdditionalScope;
    .locals 4

    sget-object v0, Lcom/voxelbusters/essentialkit/gameservices/ServerCredentialAdditionalScope;->None:Lcom/voxelbusters/essentialkit/gameservices/ServerCredentialAdditionalScope;

    sget-object v1, Lcom/voxelbusters/essentialkit/gameservices/ServerCredentialAdditionalScope;->Email:Lcom/voxelbusters/essentialkit/gameservices/ServerCredentialAdditionalScope;

    sget-object v2, Lcom/voxelbusters/essentialkit/gameservices/ServerCredentialAdditionalScope;->OpenId:Lcom/voxelbusters/essentialkit/gameservices/ServerCredentialAdditionalScope;

    sget-object v3, Lcom/voxelbusters/essentialkit/gameservices/ServerCredentialAdditionalScope;->Profile:Lcom/voxelbusters/essentialkit/gameservices/ServerCredentialAdditionalScope;

    filled-new-array {v0, v1, v2, v3}, [Lcom/voxelbusters/essentialkit/gameservices/ServerCredentialAdditionalScope;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/voxelbusters/essentialkit/gameservices/ServerCredentialAdditionalScope;

    const-string v1, "None"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/voxelbusters/essentialkit/gameservices/ServerCredentialAdditionalScope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxelbusters/essentialkit/gameservices/ServerCredentialAdditionalScope;->None:Lcom/voxelbusters/essentialkit/gameservices/ServerCredentialAdditionalScope;

    new-instance v0, Lcom/voxelbusters/essentialkit/gameservices/ServerCredentialAdditionalScope;

    const-string v1, "Email"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/voxelbusters/essentialkit/gameservices/ServerCredentialAdditionalScope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxelbusters/essentialkit/gameservices/ServerCredentialAdditionalScope;->Email:Lcom/voxelbusters/essentialkit/gameservices/ServerCredentialAdditionalScope;

    new-instance v0, Lcom/voxelbusters/essentialkit/gameservices/ServerCredentialAdditionalScope;

    const-string v1, "OpenId"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/voxelbusters/essentialkit/gameservices/ServerCredentialAdditionalScope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxelbusters/essentialkit/gameservices/ServerCredentialAdditionalScope;->OpenId:Lcom/voxelbusters/essentialkit/gameservices/ServerCredentialAdditionalScope;

    new-instance v0, Lcom/voxelbusters/essentialkit/gameservices/ServerCredentialAdditionalScope;

    const-string v1, "Profile"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/voxelbusters/essentialkit/gameservices/ServerCredentialAdditionalScope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxelbusters/essentialkit/gameservices/ServerCredentialAdditionalScope;->Profile:Lcom/voxelbusters/essentialkit/gameservices/ServerCredentialAdditionalScope;

    invoke-static {}, Lcom/voxelbusters/essentialkit/gameservices/ServerCredentialAdditionalScope;->$values()[Lcom/voxelbusters/essentialkit/gameservices/ServerCredentialAdditionalScope;

    move-result-object v0

    sput-object v0, Lcom/voxelbusters/essentialkit/gameservices/ServerCredentialAdditionalScope;->$VALUES:[Lcom/voxelbusters/essentialkit/gameservices/ServerCredentialAdditionalScope;

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

.method public static valueOf(Ljava/lang/String;)Lcom/voxelbusters/essentialkit/gameservices/ServerCredentialAdditionalScope;
    .locals 1

    const-class v0, Lcom/voxelbusters/essentialkit/gameservices/ServerCredentialAdditionalScope;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/voxelbusters/essentialkit/gameservices/ServerCredentialAdditionalScope;

    return-object p0
.end method

.method public static values()[Lcom/voxelbusters/essentialkit/gameservices/ServerCredentialAdditionalScope;
    .locals 1

    sget-object v0, Lcom/voxelbusters/essentialkit/gameservices/ServerCredentialAdditionalScope;->$VALUES:[Lcom/voxelbusters/essentialkit/gameservices/ServerCredentialAdditionalScope;

    invoke-virtual {v0}, [Lcom/voxelbusters/essentialkit/gameservices/ServerCredentialAdditionalScope;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/voxelbusters/essentialkit/gameservices/ServerCredentialAdditionalScope;

    return-object v0
.end method
