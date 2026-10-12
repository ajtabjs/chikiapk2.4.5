.class final Lcom/unity3d/player/g1;
.super Lcom/unity3d/player/X0;
.source "SourceFile"


# instance fields
.field final synthetic b:Z

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:I

.field final synthetic e:Lcom/unity3d/player/UnityPlayerForActivityOrService;


# direct methods
.method constructor <init>(Lcom/unity3d/player/UnityPlayerForActivityOrService;ZLjava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/player/g1;->e:Lcom/unity3d/player/UnityPlayerForActivityOrService;

    iput-boolean p2, p0, Lcom/unity3d/player/g1;->b:Z

    iput-object p3, p0, Lcom/unity3d/player/g1;->c:Ljava/lang/String;

    iput p4, p0, Lcom/unity3d/player/g1;->d:I

    invoke-direct {p0, p1}, Lcom/unity3d/player/X0;-><init>(Lcom/unity3d/player/UnityPlayer;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-boolean v0, p0, Lcom/unity3d/player/g1;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/player/g1;->e:Lcom/unity3d/player/UnityPlayerForActivityOrService;

    invoke-static {v0}, Lcom/unity3d/player/UnityPlayerForActivityOrService;->-$$Nest$mnativeSoftInputCanceled(Lcom/unity3d/player/UnityPlayerForActivityOrService;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/unity3d/player/g1;->c:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/unity3d/player/g1;->e:Lcom/unity3d/player/UnityPlayerForActivityOrService;

    invoke-static {v1, v0}, Lcom/unity3d/player/UnityPlayerForActivityOrService;->-$$Nest$mnativeSetInputString(Lcom/unity3d/player/UnityPlayerForActivityOrService;Ljava/lang/String;)V

    :cond_1
    :goto_0
    iget v0, p0, Lcom/unity3d/player/g1;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/unity3d/player/g1;->e:Lcom/unity3d/player/UnityPlayerForActivityOrService;

    invoke-static {v0}, Lcom/unity3d/player/UnityPlayerForActivityOrService;->-$$Nest$mnativeSoftInputClosed(Lcom/unity3d/player/UnityPlayerForActivityOrService;)V

    :cond_2
    return-void
.end method
