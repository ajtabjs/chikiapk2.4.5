.class public Lcom/voxelbusters/essentialkit/utilities/helpers/HtmlImageGetter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/Html$ImageGetter;


# instance fields
.field urlDrawable:Lcom/voxelbusters/essentialkit/utilities/helpers/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2

    :try_start_0
    new-instance v0, Lcom/voxelbusters/essentialkit/utilities/helpers/b;

    .line 1
    invoke-direct {v0}, Lcom/voxelbusters/essentialkit/utilities/helpers/b;-><init>()V

    .line 2
    iput-object v0, p0, Lcom/voxelbusters/essentialkit/utilities/helpers/HtmlImageGetter;->urlDrawable:Lcom/voxelbusters/essentialkit/utilities/helpers/b;

    new-instance v0, Lcom/voxelbusters/essentialkit/utilities/helpers/a;

    iget-object v1, p0, Lcom/voxelbusters/essentialkit/utilities/helpers/HtmlImageGetter;->urlDrawable:Lcom/voxelbusters/essentialkit/utilities/helpers/b;

    invoke-direct {v0, p1, v1}, Lcom/voxelbusters/essentialkit/utilities/helpers/a;-><init>(Ljava/lang/String;Lcom/voxelbusters/essentialkit/utilities/helpers/b;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    iget-object p1, p0, Lcom/voxelbusters/essentialkit/utilities/helpers/HtmlImageGetter;->urlDrawable:Lcom/voxelbusters/essentialkit/utilities/helpers/b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method
