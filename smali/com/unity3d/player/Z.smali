.class final Lcom/unity3d/player/Z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/unity3d/player/b0;


# direct methods
.method constructor <init>(Lcom/unity3d/player/b0;)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/player/Z;->a:Lcom/unity3d/player/b0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/Z;->a:Lcom/unity3d/player/b0;

    iget-object v0, v0, Lcom/unity3d/player/W;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    iget-object v0, p0, Lcom/unity3d/player/Z;->a:Lcom/unity3d/player/b0;

    invoke-virtual {v0}, Lcom/unity3d/player/W;->e()V

    return-void
.end method
