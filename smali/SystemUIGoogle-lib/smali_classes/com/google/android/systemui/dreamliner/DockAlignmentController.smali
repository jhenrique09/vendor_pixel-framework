.class public final Lcom/google/android/systemui/dreamliner/DockAlignmentController;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final DEBUG:Z


# instance fields
.field public mAlignmentState:I

.field public final mDockAlignmentStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final mWirelessCharger:Ljava/util/Optional;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "DockAlignmentController"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/systemui/dreamliner/DockAlignmentController;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/Optional;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/systemui/dreamliner/DockAlignmentController;->mAlignmentState:I

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/systemui/dreamliner/DockAlignmentController;->mDockAlignmentStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-object p1, p0, Lcom/google/android/systemui/dreamliner/DockAlignmentController;->mWirelessCharger:Ljava/util/Optional;

    return-void
.end method
