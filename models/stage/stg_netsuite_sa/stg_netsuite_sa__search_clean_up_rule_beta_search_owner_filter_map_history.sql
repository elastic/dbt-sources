
with source as (

    select * from {{ source('raw_netsuite_sa', 'search_clean_up_rule_beta_search_owner_filter_map_history') }}

),

renamed as (

    select
        employee_id,
        search_clean_up_rule_beta_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_deleted,
        partition_date

    from source

)

select * from renamed
