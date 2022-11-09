
with source as (

    select * from {{ source('raw_netsuite_sa', 'search_clean_up_rule_beta_rule_owners_map') }}

),

renamed as (

    select
        employee_id,
        search_clean_up_rule_beta_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_deleted

    from source

)

select * from renamed
