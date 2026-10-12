.class public final Lcom/voxelbusters/essentialkit/utilities/helpers/a;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field public final a:Ljava/net/URL;

.field public final b:Lcom/voxelbusters/essentialkit/utilities/helpers/b;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/voxelbusters/essentialkit/utilities/helpers/b;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/voxelbusters/essentialkit/utilities/helpers/a;->a:Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    iput-object p2, p0, Lcom/voxelbusters/essentialkit/utilities/helpers/a;->b:Lcom/voxelbusters/essentialkit/utilities/helpers/b;

    return-void
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    const/4 p1, 0x0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/voxelbusters/essentialkit/utilities/helpers/a;->a:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-object p1
.end method

.method public final onPostExecute(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Landroid/graphics/drawable/Drawable;

    .line 1
    iget-object v0, p0, Lcom/voxelbusters/essentialkit/utilities/helpers/a;->b:Lcom/voxelbusters/essentialkit/utilities/helpers/b;

    iput-object p1, v0, Lcom/voxelbusters/essentialkit/utilities/helpers/b;->a:Landroid/graphics/drawable/Drawable;

    return-void
.end method
