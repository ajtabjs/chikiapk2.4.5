.class final Lcom/unity3d/player/y1;
.super Lcom/unity3d/player/X0;
.source "SourceFile"


# instance fields
.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lcom/unity3d/player/UnityPlayerForGameActivity;


# direct methods
.method constructor <init>(Lcom/unity3d/player/UnityPlayerForGameActivity;II)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/player/y1;->d:Lcom/unity3d/player/UnityPlayerForGameActivity;

    iput p2, p0, Lcom/unity3d/player/y1;->b:I

    iput p3, p0, Lcom/unity3d/player/y1;->c:I

    invoke-direct {p0, p1}, Lcom/unity3d/player/X0;-><init>(Lcom/unity3d/player/UnityPlayer;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lcom/unity3d/player/y1;->d:Lcom/unity3d/player/UnityPlayerForGameActivity;

    iget v1, p0, Lcom/unity3d/player/y1;->b:I

    iget v2, p0, Lcom/unity3d/player/y1;->c:I

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayerForGameActivity;->-$$Nest$mnativeOrientationChanged(Lcom/unity3d/player/UnityPlayerForGameActivity;II)V

    return-void
.end method
