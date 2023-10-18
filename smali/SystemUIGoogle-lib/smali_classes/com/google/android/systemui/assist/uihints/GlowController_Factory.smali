.class public abstract Lcom/google/android/systemui/assist/uihints/GlowController_Factory;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljavax/inject/Provider;


# direct methods
.method public static newInstance(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/android/systemui/assist/uihints/TouchInsideHandler;Lcom/android/systemui/navigationbar/NavigationModeController;)Lcom/google/android/systemui/assist/uihints/GlowController;
    .locals 1

    new-instance v0, Lcom/google/android/systemui/assist/uihints/GlowController;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/systemui/assist/uihints/GlowController;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/android/systemui/assist/uihints/TouchInsideHandler;Lcom/android/systemui/navigationbar/NavigationModeController;)V

    return-object v0
.end method
