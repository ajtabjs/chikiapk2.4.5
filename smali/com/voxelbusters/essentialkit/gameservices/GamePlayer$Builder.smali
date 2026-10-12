.class public Lcom/voxelbusters/essentialkit/gameservices/GamePlayer$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxelbusters/essentialkit/gameservices/GamePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private player:Lcom/google/android/gms/games/Player;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/gameservices/GamePlayer$Builder;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public build()Lcom/voxelbusters/essentialkit/gameservices/GamePlayer;
    .locals 4

    new-instance v0, Lcom/voxelbusters/essentialkit/gameservices/GamePlayer;

    iget-object v1, p0, Lcom/voxelbusters/essentialkit/gameservices/GamePlayer$Builder;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/voxelbusters/essentialkit/gameservices/GamePlayer$Builder;->player:Lcom/google/android/gms/games/Player;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/voxelbusters/essentialkit/gameservices/GamePlayer;-><init>(Landroid/content/Context;Lcom/google/android/gms/games/Player;Lcom/voxelbusters/essentialkit/gameservices/w;)V

    return-object v0
.end method

.method public withPlayer(Lcom/google/android/gms/games/Player;)Lcom/voxelbusters/essentialkit/gameservices/GamePlayer$Builder;
    .locals 0

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/gameservices/GamePlayer$Builder;->player:Lcom/google/android/gms/games/Player;

    return-object p0
.end method
