.class public Lcom/voxelbusters/essentialkit/gameservices/GameAchievement$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxelbusters/essentialkit/gameservices/GameAchievement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private achievement:Lcom/google/android/gms/games/achievement/Achievement;

.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/voxelbusters/essentialkit/gameservices/GameAchievement;
    .locals 4

    new-instance v0, Lcom/voxelbusters/essentialkit/gameservices/GameAchievement;

    iget-object v1, p0, Lcom/voxelbusters/essentialkit/gameservices/GameAchievement$Builder;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/voxelbusters/essentialkit/gameservices/GameAchievement$Builder;->achievement:Lcom/google/android/gms/games/achievement/Achievement;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/voxelbusters/essentialkit/gameservices/GameAchievement;-><init>(Landroid/content/Context;Lcom/google/android/gms/games/achievement/Achievement;Lcom/voxelbusters/essentialkit/gameservices/a;)V

    return-object v0
.end method

.method public withAchievement(Landroid/content/Context;Lcom/google/android/gms/games/achievement/Achievement;)Lcom/voxelbusters/essentialkit/gameservices/GameAchievement$Builder;
    .locals 0

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/gameservices/GameAchievement$Builder;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/voxelbusters/essentialkit/gameservices/GameAchievement$Builder;->achievement:Lcom/google/android/gms/games/achievement/Achievement;

    return-object p0
.end method
