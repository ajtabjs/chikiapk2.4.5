.class final Lcom/unity3d/player/d0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic a:Lcom/unity3d/player/g0;


# direct methods
.method constructor <init>(Lcom/unity3d/player/g0;)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/player/d0;->a:Lcom/unity3d/player/g0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/d0;->a:Lcom/unity3d/player/g0;

    invoke-virtual {v0}, Lcom/unity3d/player/g0;->reportSoftInputArea()V

    iget-object v0, p0, Lcom/unity3d/player/d0;->a:Lcom/unity3d/player/g0;

    iget-object v0, v0, Lcom/unity3d/player/g0;->h:Lcom/unity3d/player/Y;

    invoke-virtual {v0}, Lcom/unity3d/player/Y;->b()V

    return-void
.end method
