.class final Lcom/unity3d/player/u1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:F

.field final synthetic b:Lcom/unity3d/player/UnityPlayerForActivityOrService;


# direct methods
.method constructor <init>(Lcom/unity3d/player/UnityPlayerForActivityOrService;F)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/player/u1;->b:Lcom/unity3d/player/UnityPlayerForActivityOrService;

    iput p2, p0, Lcom/unity3d/player/u1;->a:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/unity3d/player/u1;->b:Lcom/unity3d/player/UnityPlayerForActivityOrService;

    invoke-virtual {v0}, Lcom/unity3d/player/UnityPlayerForActivityOrService;->getView()Lcom/unity3d/player/D0;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/unity3d/player/u1;->a:F

    invoke-virtual {v0, v1}, Lcom/unity3d/player/D0;->a(F)V

    :cond_0
    return-void
.end method
