.class public final Lcom/voxelbusters/essentialkit/uiviews/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# instance fields
.field public final synthetic a:Lcom/voxelbusters/essentialkit/uiviews/DatePicker;


# direct methods
.method public constructor <init>(Lcom/voxelbusters/essentialkit/uiviews/DatePicker;)V
    .locals 0

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/uiviews/d;->a:Lcom/voxelbusters/essentialkit/uiviews/DatePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDateSet(Landroid/widget/DatePicker;III)V
    .locals 1

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "On Date Set"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/voxelbusters/essentialkit/uiviews/d;->a:Lcom/voxelbusters/essentialkit/uiviews/DatePicker;

    invoke-static {p1}, Lcom/voxelbusters/essentialkit/uiviews/DatePicker;->access$000(Lcom/voxelbusters/essentialkit/uiviews/DatePicker;)Lcom/voxelbusters/essentialkit/uiviews/IUiViews$IDatePickerListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/voxelbusters/essentialkit/uiviews/d;->a:Lcom/voxelbusters/essentialkit/uiviews/DatePicker;

    invoke-static {p1}, Lcom/voxelbusters/essentialkit/uiviews/DatePicker;->access$000(Lcom/voxelbusters/essentialkit/uiviews/DatePicker;)Lcom/voxelbusters/essentialkit/uiviews/IUiViews$IDatePickerListener;

    move-result-object p1

    invoke-interface {p1, p2, p3, p4}, Lcom/voxelbusters/essentialkit/uiviews/IUiViews$IDatePickerListener;->onSuccess(III)V

    :cond_0
    return-void
.end method
