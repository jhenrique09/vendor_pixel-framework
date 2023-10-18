.class public final Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility$1;->this$0:Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final setWindowState(III)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility$1;->this$0:Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility;

    iget v0, p0, Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility;->mDisplayId:I

    if-ne v0, p1, :cond_1

    const/4 p1, 0x2

    if-ne p2, p1, :cond_1

    if-eqz p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-boolean p2, p0, Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility;->mIsNavigationHidden:Z

    if-eq p1, p2, :cond_1

    iput-boolean p1, p0, Lcom/google/android/systemui/elmyra/gates/NavigationBarVisibility;->mIsNavigationHidden:Z

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/gates/Gate;->notifyListener()V

    :cond_1
    return-void
.end method
