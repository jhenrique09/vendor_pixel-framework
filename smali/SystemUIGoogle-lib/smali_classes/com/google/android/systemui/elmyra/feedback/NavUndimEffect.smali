.class public final Lcom/google/android/systemui/elmyra/feedback/NavUndimEffect;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/systemui/elmyra/feedback/FeedbackEffect;


# instance fields
.field public final mNavBarController:Lcom/android/systemui/navigationbar/NavigationBarController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/NavigationBarController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/feedback/NavUndimEffect;->mNavBarController:Lcom/android/systemui/navigationbar/NavigationBarController;

    return-void
.end method


# virtual methods
.method public final onProgress(IF)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/feedback/NavUndimEffect;->mNavBarController:Lcom/android/systemui/navigationbar/NavigationBarController;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBarController;->touchAutoDim(I)V

    return-void
.end method

.method public final onRelease()V
    .locals 1

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/feedback/NavUndimEffect;->mNavBarController:Lcom/android/systemui/navigationbar/NavigationBarController;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/navigationbar/NavigationBarController;->touchAutoDim(I)V

    return-void
.end method

.method public final onResolve(Lcom/google/android/systemui/elmyra/sensors/GestureSensor$DetectionProperties;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/feedback/NavUndimEffect;->mNavBarController:Lcom/android/systemui/navigationbar/NavigationBarController;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBarController;->touchAutoDim(I)V

    return-void
.end method
