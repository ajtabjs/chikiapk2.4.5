.class public final synthetic Lcom/voxelbusters/essentialkit/gameservices/GamePlayer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/voxelbusters/essentialkit/gameservices/GamePlayer;

.field public final synthetic f$1:Ljava/lang/Exception;

.field public final synthetic f$2:Lcom/voxelbusters/essentialkit/gameservices/IGameServices$ILoadPlayersListener;

.field public final synthetic f$3:Ljava/util/ArrayList;

.field public final synthetic f$4:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public synthetic constructor <init>(Lcom/voxelbusters/essentialkit/gameservices/GamePlayer;Ljava/lang/Exception;Lcom/voxelbusters/essentialkit/gameservices/IGameServices$ILoadPlayersListener;Ljava/util/ArrayList;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/gameservices/GamePlayer$$ExternalSyntheticLambda0;->f$0:Lcom/voxelbusters/essentialkit/gameservices/GamePlayer;

    iput-object p2, p0, Lcom/voxelbusters/essentialkit/gameservices/GamePlayer$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Exception;

    iput-object p3, p0, Lcom/voxelbusters/essentialkit/gameservices/GamePlayer$$ExternalSyntheticLambda0;->f$2:Lcom/voxelbusters/essentialkit/gameservices/IGameServices$ILoadPlayersListener;

    iput-object p4, p0, Lcom/voxelbusters/essentialkit/gameservices/GamePlayer$$ExternalSyntheticLambda0;->f$3:Ljava/util/ArrayList;

    iput-object p5, p0, Lcom/voxelbusters/essentialkit/gameservices/GamePlayer$$ExternalSyntheticLambda0;->f$4:Ljava/util/concurrent/ExecutorService;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 0
    iget-object v0, p0, Lcom/voxelbusters/essentialkit/gameservices/GamePlayer$$ExternalSyntheticLambda0;->f$0:Lcom/voxelbusters/essentialkit/gameservices/GamePlayer;

    iget-object v1, p0, Lcom/voxelbusters/essentialkit/gameservices/GamePlayer$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Exception;

    iget-object v2, p0, Lcom/voxelbusters/essentialkit/gameservices/GamePlayer$$ExternalSyntheticLambda0;->f$2:Lcom/voxelbusters/essentialkit/gameservices/IGameServices$ILoadPlayersListener;

    iget-object v3, p0, Lcom/voxelbusters/essentialkit/gameservices/GamePlayer$$ExternalSyntheticLambda0;->f$3:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/voxelbusters/essentialkit/gameservices/GamePlayer$$ExternalSyntheticLambda0;->f$4:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/voxelbusters/essentialkit/gameservices/GamePlayer;->lambda$loadFriends$0$com-voxelbusters-essentialkit-gameservices-GamePlayer(Ljava/lang/Exception;Lcom/voxelbusters/essentialkit/gameservices/IGameServices$ILoadPlayersListener;Ljava/util/ArrayList;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method
