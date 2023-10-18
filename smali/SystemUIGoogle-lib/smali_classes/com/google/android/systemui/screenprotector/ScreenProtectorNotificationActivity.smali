.class public Lcom/google/android/systemui/screenprotector/ScreenProtectorNotificationActivity;
.super Landroid/app/Activity;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public mDisableNotification:Landroid/widget/TextView;

.field public mGoToSettings:Landroid/widget/TextView;

.field public mGotIt:Landroid/widget/TextView;

.field public mMessage:Landroid/widget/TextView;

.field public mResponse:B

.field public mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/google/android/systemui/screenprotector/ScreenProtectorNotificationActivity;->mResponse:B

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/screenprotector/ScreenProtectorNotificationActivity;->mGoToSettings:Landroid/widget/TextView;

    const-string v1, "ScreenProtectorNotificationActivity"

    if-ne p1, v0, :cond_0

    const/4 p1, 0x2

    iput-byte p1, p0, Lcom/google/android/systemui/screenprotector/ScreenProtectorNotificationActivity;->mResponse:B

    const-string p1, "Button clicked - Go To Settings"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, ":settings:fragment_args_key"

    const-string v1, "touch_sensitivity"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.DISPLAY_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x18000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, ":settings:show_fragment_args"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/screenprotector/ScreenProtectorNotificationActivity;->mDisableNotification:Landroid/widget/TextView;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x4

    iput-byte p1, p0, Lcom/google/android/systemui/screenprotector/ScreenProtectorNotificationActivity;->mResponse:B

    const-string p1, "Button clicked - Disable Notification"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "screen_protector_shared_perf"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "notification_enabled"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/systemui/screenprotector/ScreenProtectorNotificationActivity;->mGotIt:Landroid/widget/TextView;

    if-ne p1, v0, :cond_2

    const/4 p1, 0x3

    iput-byte p1, p0, Lcom/google/android/systemui/screenprotector/ScreenProtectorNotificationActivity;->mResponse:B

    const-string p1, "Button clicked -  Got It"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addSystemFlags(I)V

    const/16 v1, 0x7d8

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->requestWindowFeature(I)Z

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d022c

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "notify_id"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const v0, 0x7f0a0259

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/systemui/screenprotector/ScreenProtectorNotificationActivity;->mDisableNotification:Landroid/widget/TextView;

    const v0, 0x7f0a0312

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/systemui/screenprotector/ScreenProtectorNotificationActivity;->mGotIt:Landroid/widget/TextView;

    const v0, 0x7f0a0310

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/systemui/screenprotector/ScreenProtectorNotificationActivity;->mGoToSettings:Landroid/widget/TextView;

    const v0, 0x7f0a04a4

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/systemui/screenprotector/ScreenProtectorNotificationActivity;->mMessage:Landroid/widget/TextView;

    const v0, 0x7f0a07a0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/systemui/screenprotector/ScreenProtectorNotificationActivity;->mTitle:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/google/android/systemui/screenprotector/ScreenProtectorNotificationActivity;->mDisableNotification:Landroid/widget/TextView;

    const v1, 0x7f130791

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/android/systemui/screenprotector/ScreenProtectorNotificationActivity;->mGotIt:Landroid/widget/TextView;

    const v1, 0x7f130793

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/google/android/systemui/screenprotector/ScreenProtectorNotificationActivity;->mGoToSettings:Landroid/widget/TextView;

    const v1, 0x7f130792

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/google/android/systemui/screenprotector/ScreenProtectorNotificationActivity;->mMessage:Landroid/widget/TextView;

    const v0, 0x7f130790

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/systemui/screenprotector/ScreenProtectorNotificationActivity;->mMessage:Landroid/widget/TextView;

    const v0, 0x7f130795

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object p1, p0, Lcom/google/android/systemui/screenprotector/ScreenProtectorNotificationActivity;->mTitle:Landroid/widget/TextView;

    const v0, 0x7f130794

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/google/android/systemui/screenprotector/ScreenProtectorNotificationActivity;->mDisableNotification:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/google/android/systemui/screenprotector/ScreenProtectorNotificationActivity;->mGotIt:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/google/android/systemui/screenprotector/ScreenProtectorNotificationActivity;->mGoToSettings:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final onDestroy()V
    .locals 4

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-byte v1, p0, Lcom/google/android/systemui/screenprotector/ScreenProtectorNotificationActivity;->mResponse:B

    const-string v2, "screen_protector_shared_perf"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "notification_response"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public final onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method
