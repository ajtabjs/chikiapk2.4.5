.class final Lcom/unity3d/player/L;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/unity3d/player/M;


# direct methods
.method constructor <init>(Lcom/unity3d/player/M;)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/player/L;->a:Lcom/unity3d/player/M;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v1, -0x1000000

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/unity3d/player/L;->a:Lcom/unity3d/player/M;

    iget-object v2, v2, Lcom/unity3d/player/M;->b:Lcom/unity3d/player/N;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/unity3d/player/L;->a:Lcom/unity3d/player/M;

    iget-object v3, v3, Lcom/unity3d/player/M;->b:Lcom/unity3d/player/N;

    iget-object v3, v3, Lcom/unity3d/player/N;->a:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iget-object v2, p0, Lcom/unity3d/player/L;->a:Lcom/unity3d/player/M;

    iget-object v2, v2, Lcom/unity3d/player/M;->b:Lcom/unity3d/player/N;

    new-instance v3, Landroid/graphics/drawable/LayerDrawable;

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    invoke-direct {v3, v4}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
