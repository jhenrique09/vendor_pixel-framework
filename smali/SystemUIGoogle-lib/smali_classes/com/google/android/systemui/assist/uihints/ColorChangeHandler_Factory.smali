.class public abstract Lcom/google/android/systemui/assist/uihints/ColorChangeHandler_Factory;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljavax/inject/Provider;


# direct methods
.method public static newInstance(Landroid/content/Context;)Lcom/google/android/systemui/assist/uihints/ColorChangeHandler;
    .locals 1

    new-instance v0, Lcom/google/android/systemui/assist/uihints/ColorChangeHandler;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/assist/uihints/ColorChangeHandler;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
