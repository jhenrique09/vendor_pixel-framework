.class public final Lcom/google/android/systemui/dreamliner/DockObserver$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/systemui/settings/UserTracker$Callback;


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/dreamliner/DockObserver;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/dreamliner/DockObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/dreamliner/DockObserver$1;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onUserChanged(ILandroid/content/Context;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockObserver$1;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    iget-object p1, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/google/android/systemui/dreamliner/DockObserver;->-$$Nest$mstopDreamlinerService(Lcom/google/android/systemui/dreamliner/DockObserver;Landroid/content/Context;)V

    iget-object p1, p0, Lcom/google/android/systemui/dreamliner/DockObserver;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/dreamliner/DockObserver;->updateCurrentDockingStatus(Landroid/content/Context;)V

    return-void
.end method
