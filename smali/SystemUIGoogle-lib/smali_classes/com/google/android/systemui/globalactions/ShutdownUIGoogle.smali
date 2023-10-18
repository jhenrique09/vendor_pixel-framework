.class public final Lcom/google/android/systemui/globalactions/ShutdownUIGoogle;
.super Lcom/android/systemui/globalactions/ShutdownUi;
.source ""


# instance fields
.field public final mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/BlurUtils;Landroid/content/ContentResolver;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/globalactions/ShutdownUi;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/BlurUtils;)V

    iput-object p3, p0, Lcom/google/android/systemui/globalactions/ShutdownUIGoogle;->mContentResolver:Landroid/content/ContentResolver;

    return-void
.end method
