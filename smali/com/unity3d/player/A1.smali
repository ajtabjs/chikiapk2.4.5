.class final Lcom/unity3d/player/A1;
.super Lcom/unity3d/player/X0;
.source "SourceFile"


# instance fields
.field final synthetic b:Lcom/unity3d/player/UnityPlayerForGameActivity;


# direct methods
.method constructor <init>(Lcom/unity3d/player/UnityPlayerForGameActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/player/A1;->b:Lcom/unity3d/player/UnityPlayerForGameActivity;

    invoke-direct {p0, p1}, Lcom/unity3d/player/X0;-><init>(Lcom/unity3d/player/UnityPlayer;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/unity3d/player/A1;->b:Lcom/unity3d/player/UnityPlayerForGameActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/unity3d/player/UnityPlayerForGameActivity;->-$$Nest$mnativeUnityPlayerSetRunning(Lcom/unity3d/player/UnityPlayerForGameActivity;Z)V

    return-void
.end method
