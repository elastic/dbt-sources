
with source as (

    select * from {{ source('raw_netsuite_sa', 'notification_tracker_beta_search_clean_up_rules_map') }}

),

renamed as (

    select
        notification_tracker_beta_id,
        search_clean_up_rule_beta_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_deleted

    from source

)

select * from renamed
