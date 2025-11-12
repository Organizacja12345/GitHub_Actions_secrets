echo "echo Goodbye"
- name: Set GitHub Path #⬅ Akcja dodaje aktualny katalog wykonawczy akcji do
$PATH. Dzięki temu akcja poniżej zadziała.
 run: echo "$GITHUB_ACTION_PATH" >> $GITHUB_PATH
 shell: bash
 env:
 GITHUB_ACTION_PATH: ${{ github.action_path }}
 - name: Run goodbye.sh
 run: goodbye.sh
 shell: bash
