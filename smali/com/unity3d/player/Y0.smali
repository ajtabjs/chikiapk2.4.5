.class final Lcom/unity3d/player/Y0;
.super Lcom/unity3d/player/X0;
.source "SourceFile"


# instance fields
.field final synthetic b:Landroid/view/WindowInsets;

.field final synthetic c:Lcom/unity3d/player/l1;


# direct methods
.method constructor <init>(Lcom/unity3d/player/l1;Landroid/view/WindowInsets;)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/player/Y0;->c:Lcom/unity3d/player/l1;

    iput-object p2, p0, Lcom/unity3d/player/Y0;->b:Landroid/view/WindowInsets;

    iget-object p1, p1, Lcom/unity3d/player/l1;->a:Lcom/unity3d/player/UnityPlayerForActivityOrService;

    invoke-direct {p0, p1}, Lcom/unity3d/player/X0;-><init>(Lcom/unity3d/player/UnityPlayer;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/unity3d/player/Y0;->c:Lcom/unity3d/player/l1;

    iget-object v0, v0, Lcom/unity3d/player/l1;->a:Lcom/unity3d/player/UnityPlayerForActivityOrService;

    iget-object v1, p0, Lcom/unity3d/player/Y0;->b:Landroid/view/WindowInsets;

    invoke-static {v0, v1}, Lcom/unity3d/player/UnityPlayerForActivityOrService;->-$$Nest$mnativeOnApplyWindowInsets(Lcom/unity3d/player/UnityPlayerForActivityOrService;Landroid/view/WindowInsets;)V

    return-void
.end method
