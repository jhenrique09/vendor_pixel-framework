.class public final Lcom/google/android/systemui/assist/OpaEnabledDispatcher;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/systemui/assist/OpaEnabledListener;


# instance fields
.field public final mCentralSurfacesLazy:Ldagger/Lazy;


# direct methods
.method public constructor <init>(Ldagger/Lazy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/assist/OpaEnabledDispatcher;->mCentralSurfacesLazy:Ldagger/Lazy;

    return-void
.end method


# virtual methods
.method public final onOpaEnabledReceived(Landroid/content/Context;ZZZZ)V
    .locals 1

    const/4 p4, 0x0

    if-eqz p5, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    invoke-static {p1}, Landroid/os/UserManager;->isDeviceInDemoMode(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    move p1, p4

    :goto_0
    iget-object p0, p0, Lcom/google/android/systemui/assist/OpaEnabledDispatcher;->mCentralSurfacesLazy:Ldagger/Lazy;

    check-cast p0, Ldagger/internal/DoubleCheck;

    invoke-virtual {p0}, Ldagger/internal/DoubleCheck;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    check-cast p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->getNavigationBarView()Lcom/android/systemui/navigationbar/NavigationBarView;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->getNavigationBarView()Lcom/android/systemui/navigationbar/NavigationBarView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getHomeButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object p0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    move p2, p4

    :goto_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ge p2, p3, :cond_3

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/View;

    check-cast p3, Lcom/google/android/systemui/assist/OpaLayout;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p5, Ljava/lang/StringBuilder;

    const-string v0, "Setting opa enabled to "

    invoke-direct {p5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    const-string v0, "OpaLayout"

    invoke-static {v0, p5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p3, Lcom/google/android/systemui/assist/OpaLayout;->mOpaEnabled:Z

    iput-boolean p4, p3, Lcom/google/android/systemui/assist/OpaLayout;->mOpaEnabledNeedsUpdate:Z

    invoke-virtual {p3}, Lcom/google/android/systemui/assist/OpaLayout;->updateOpaLayout()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method
